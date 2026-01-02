#include "sprite/SDK_sprite.h"



typedef struct{

    double base_width;
    double base_height;
    SDL_Texture *texture;
    
    SDL_FRect src_rect;

} SDK_StaticSprite_Data;


typedef struct{

    SDL_FRect src_rect;
    SDL_FRect base_src_rect;
    uint8_t amount_frames;
    uint8_t current_frame;
    double frame_duration;
    double time_elapsed;
    float width_offset;
    bool play_animation;
    bool loop_animation;
    bool enable_animation;

} SDK_Animation;

typedef struct{

    double base_width;
    double base_height;
    SDL_Texture *texture;

    SDK_Animation *animation;
    uint8_t amount_animation;
    uint8_t current_animation;

} SDK_AnimatedSprite_Data;






SDK_Sprite* SDK_Create_StaticSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect){

    enum SDK_SpriteType sprite_type = SDK_STATIC_SPRITE;

    SDK_Sprite *sprite = t_malloc(sizeof(SDK_Sprite));

    if(!sprite)
        return NULL;
    
    memcpy((void*)sprite, &sprite_type, sizeof(enum SDK_SpriteType));
    
    sprite->data = t_malloc(sizeof(SDK_StaticSprite_Data));

    if(!sprite->data){
        t_free(sprite);
        return NULL;
    }

    SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;

    data->texture = IMG_LoadTexture(display->renderer, texture_path);
    if(!data->texture){
        t_free(data);
        t_free(sprite);
        return NULL;
    }

     
    data->base_width = src_rect.w;
    data->base_height = src_rect.h;
    data->src_rect = src_rect;

    sprite->pivot_point = sprite_pos;
    sprite->angle = 0.0f;
    sprite->scale = 1.0f;
    sprite->flip_mode = SDL_FLIP_NONE;

    sprite->render_rect = (SDL_FRect){sprite_pos.x, sprite_pos.y, src_rect.w, src_rect.h};
    
    return sprite;
}




SDK_Sprite* SDK_Create_AnimatedSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect){

    enum SDK_SpriteType sprite_type = SDK_ANIMATED_SPRITE;

    SDK_Sprite *sprite = t_malloc(sizeof(SDK_Sprite));

    if(!sprite)
        return NULL;
    
    // this allows for me to set the const SDK_SpriteType
    memcpy((void*)sprite, &sprite_type, sizeof(enum SDK_SpriteType));
    
    sprite->data = t_malloc(sizeof(SDK_AnimatedSprite_Data));

    if(!sprite->data){
        t_free(sprite);
        return NULL;
    }

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)sprite->data;

    data->texture = IMG_LoadTexture(display->renderer, texture_path);
    if(!data->texture){
        t_free(data);
        t_free(sprite);
        return NULL;
    }


    data->amount_animation = 0;
    data->current_animation = 0;
    data->animation = NULL;
    data->base_width = src_rect.w;
    data->base_height = src_rect.h;

    sprite->pivot_point = sprite_pos;
    sprite->angle = 0.0f;
    sprite->scale = 1.0f;
    sprite->flip_mode = SDL_FLIP_NONE;
    sprite->render_rect = (SDL_FRect){sprite_pos.x, sprite_pos.y, src_rect.w, src_rect.h};

    
    return sprite;
}




int SDK_Sprite_AllocAnimation(SDK_Sprite *animated_sprite, uint16_t animation_capacity){

    if(!animated_sprite|| animated_sprite->sprite_type != SDK_ANIMATED_SPRITE || animation_capacity > UINT16_MAX) return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;


    if(data->amount_animation == 0){

        data->animation = t_malloc(sizeof(SDK_Animation) * animation_capacity);
        if(!data->animation) return 1;

    } else{

        SDK_Animation *new_animation = t_realloc(data->animation, sizeof(SDK_Animation) * animation_capacity);
        if(!new_animation) return 1;
        data->animation = new_animation;

    }

    data->amount_animation = animation_capacity;

    return 0;
}




int SDK_Sprite_AddAnimation(SDK_Sprite *animated_sprite, SDL_FRect src_rect, uint8_t amount_frames, double fps, double offset_width, uint16_t animation_index){

    if(!animated_sprite || animated_sprite->sprite_type != SDK_ANIMATED_SPRITE)
        return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;

    if(animation_index >= data->amount_animation) return 1;

    SDK_Animation *animation = &data->animation[animation_index];

    animation->width_offset = offset_width;
    animation->base_src_rect = src_rect;
    animation->src_rect = src_rect;

    animation->amount_frames = amount_frames;
    animation->current_frame = 0;

    animation->frame_duration = 1.0f / fps;
    animation->time_elapsed = 0.0f;


    animation->loop_animation = false;
    animation->play_animation = false;
    animation->enable_animation = false;

    return 0;
}




int SDK_Sprite_UpdateAnimation(SDK_Sprite *animated_sprite, SDK_Time *time){

    if(!animated_sprite || !time)
        return 1;

    if(animated_sprite->sprite_type != SDK_ANIMATED_SPRITE)
        return 0;

    SDK_AnimatedSprite_Data *m_data = (SDK_AnimatedSprite_Data*)animated_sprite->data;

    if(m_data->current_animation >= m_data->amount_animation){
        return 1;
    }

    SDK_Animation *animation = &m_data->animation[m_data->current_animation];

    if(animation->loop_animation){
        animation->play_animation = true;
    }

    if(!animation->play_animation || !animation->enable_animation){

        animation->current_frame = 0;
        animation->time_elapsed = 0.0f;
        animation->src_rect.x = animation->base_src_rect.x + (0 * (animation->base_src_rect.w + animation->width_offset));

        return 0;
    }


    SDL_FRect *base_src_rect = &animation->base_src_rect;

    animation->time_elapsed += time->dt;

    if(animation->time_elapsed < animation->frame_duration)
        return 0;

    int frames_advanced = (int)(animation->time_elapsed / animation->frame_duration);
    animation->time_elapsed -= frames_advanced * animation->frame_duration;
    animation->current_frame = (animation->current_frame + frames_advanced) % animation->amount_frames;

    animation->src_rect.x = base_src_rect->x + (animation->current_frame * (base_src_rect->w + animation->width_offset));

    if(animation->current_frame == 0)
        animation->play_animation = false;    

    return 0;
}




int SDK_Sprite_SelectAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index){

    if(!animated_sprite || animated_sprite->sprite_type != SDK_ANIMATED_SPRITE)
        return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;

    if(animation_index >= data->amount_animation)
        return 1;

    data->current_animation = animation_index;

    return 0;
}




int SDK_Sprite_SetPlayAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool play){

    if(!animated_sprite || animated_sprite->sprite_type != SDK_ANIMATED_SPRITE) return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;
    if(animation_index >= data->amount_animation) return 1;

    data->animation[animation_index].play_animation = play;

    return 0;
}




int SDK_Sprite_SetLoopAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool loop){

    if(!animated_sprite || animated_sprite->sprite_type != SDK_ANIMATED_SPRITE) return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;
    if(animation_index >= data->amount_animation) return 1;

    data->animation[animation_index].loop_animation = loop;
    
    return 0;
}




int SDK_Sprite_EnableAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool enabled){
    
    if(!animated_sprite || animated_sprite->sprite_type != SDK_ANIMATED_SPRITE) return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;
    if(animation_index >= data->amount_animation) return 1;
    
    data->animation[animation_index].enable_animation = enabled;

    return 0;
}




SDL_Texture* SDK_Sprite_GetTexture(SDK_Sprite *sprite){

    if(!sprite) return NULL;

    if(sprite->sprite_type == SDK_STATIC_SPRITE){
        SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;
        return data->texture;
    }

    if(sprite->sprite_type == SDK_ANIMATED_SPRITE){
        SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)sprite->data;
        return data->texture;
    }

    return NULL;
}



int SDK_Render_Sprite(SDK_Display *display, SDK_Sprite *sprite){

    SDL_FRect *src_rect;
    SDL_Texture *texture = NULL;

    if(sprite->sprite_type == SDK_ANIMATED_SPRITE){

        SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)sprite->data;

        if(data->current_animation >= data->amount_animation){
            return 1;
        }

        src_rect = &data->animation[data->current_animation].src_rect;
        texture = data->texture;

    } else{

        SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;

        src_rect = &data->src_rect;
        texture = data->texture;

    }

    if(sprite->angle == 0.0f && sprite->flip_mode == SDL_FLIP_NONE){

        if(!SDL_RenderTexture(display->renderer, texture, src_rect, &sprite->render_rect))
            return 1;

    } else{

        if(!SDL_RenderTextureRotated(display->renderer, texture, src_rect, &sprite->render_rect, sprite->angle, &sprite->pivot_point, sprite->flip_mode))
            return 1;

    }

    return 0;
}




int SDK_Sprite_UpdateScale(SDK_Sprite *sprite, double new_scale){

    if(!sprite)
        return 1;

    if(sprite->sprite_type == SDK_STATIC_SPRITE){

        SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;

        SDL_FRect *render_rect = &sprite->render_rect;
        sprite->scale = new_scale;

        render_rect->w = data->base_width * new_scale;
        render_rect->h = data->base_height * new_scale;
    
    } else if(sprite->sprite_type == SDK_ANIMATED_SPRITE){

        SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)sprite->data;

        SDL_FRect *render_rect = &sprite->render_rect;
        sprite->scale = new_scale;

        render_rect->w = data->base_width * new_scale;
        render_rect->h = data->base_height * new_scale;

    }  

    return 0;
}








void SDK_DestroySprite(SDK_Sprite *sprite){

    if(!sprite) return;

    if(sprite->sprite_type == SDK_ANIMATED_SPRITE){

        SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)sprite->data;
        t_free(data->animation);
        SDL_DestroyTexture(data->texture);
        t_free(sprite->data);

    } else{

        SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;
        SDL_DestroyTexture(data->texture);
        t_free(sprite->data);

    }

    t_free(sprite);

}

