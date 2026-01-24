/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "sprite/SDK_sprite.h"



typedef struct{

    float base_width;
    float base_height;
    SDL_Texture *texture;
    
    SDL_FRect src_rect;

} SDK_StaticSprite_Data;


typedef struct{

    float base_width;
    float base_height;
    SDL_Color color;
    bool is_filled;

} SDK_RectSprite_Data;


typedef struct{

    SDL_FRect *frames;
    uint8_t amount_frames;
    uint8_t current_frame;
    double frame_duration;
    double time_elapsed;
    bool play_animation;
    bool loop_animation;
    bool enable_animation;

} SDK_Animation;

typedef struct{

    float base_width;
    float base_height;
    SDL_Texture *texture;

    SDK_Animation *animation;
    uint16_t amount_animation;
    uint16_t current_animation;

} SDK_AnimatedSprite_Data;




SDK_Sprite* SDK_Create_StaticSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect){

    if(!display) return NULL;


    SDK_Sprite *sprite = t_malloc(sizeof(SDK_Sprite));

    if(!sprite)
        return NULL;

    enum SDK_SpriteType *sprite_type = (enum SDK_SpriteType *)&sprite->sprite_type;
    *sprite_type = SDK_STATIC_SPRITE;

    void **data_t = (void **)&sprite->data;
    *data_t = t_malloc(sizeof(SDK_StaticSprite_Data));

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

    if(!display) return NULL;

    SDK_Sprite *sprite = t_malloc(sizeof(SDK_Sprite));

    if(!sprite)
        return NULL;
    
    enum SDK_SpriteType *sprite_type = (enum SDK_SpriteType *)&sprite->sprite_type;
    *sprite_type = SDK_ANIMATED_SPRITE;

    void **data_t = (void **)&sprite->data;
    
    *data_t = t_malloc(sizeof(SDK_AnimatedSprite_Data));

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




SDK_Sprite* SDK_Create_RectSprite(SDL_FRect rect, SDL_Color color, bool is_filled){

    SDK_Sprite *sprite = t_malloc(sizeof(SDK_Sprite));

    if(!sprite){
        return NULL;
    }

    enum SDK_SpriteType *sprite_type = (enum SDK_SpriteType *)&sprite->sprite_type;
    *sprite_type = SDK_RECT_SPRITE;

    void **data_t = (void **)&sprite->data;
    
    *data_t = t_malloc(sizeof(SDK_RectSprite_Data));

    if(!sprite->data){
        t_free(sprite);
        return NULL;
    }

    SDK_RectSprite_Data *data = (SDK_RectSprite_Data*)sprite->data;
  
    sprite->render_rect = rect;
    sprite->scale = 1.0f;
    sprite->angle = 0.0f;
    sprite->flip_mode = SDL_FLIP_NONE;
    sprite->pivot_point = (SDL_FPoint){0.0f, 0.0f};

    data->is_filled = is_filled;
    data->color = color;
    data->base_height = rect.h;
    data->base_width = rect.w;

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




int SDK_Sprite_AddAnimation(SDK_Sprite *animated_sprite, SDL_FRect *frames, uint8_t amount_frames, double fps, uint16_t animation_index){

    if(!animated_sprite || animated_sprite->sprite_type != SDK_ANIMATED_SPRITE)
        return 1;

    SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)animated_sprite->data;

    if(animation_index >= data->amount_animation) return 1;

    SDK_Animation *animation = &data->animation[animation_index];

    animation->frames = t_malloc(sizeof(SDL_FRect) * amount_frames);
    if(!animation->frames) return 1;
    SDL_memcpy(animation->frames, frames, sizeof(SDL_FRect) * amount_frames); 

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


    if((!animation->loop_animation && !animation->play_animation) || !animation->enable_animation){

        animation->current_frame = 0;
        animation->time_elapsed = 0.0f;

        return 0;
    }



    animation->time_elapsed += time->dt;

    if(animation->time_elapsed < animation->frame_duration)
        return 0;

    int frames_advanced = (int)(animation->time_elapsed / animation->frame_duration);
    animation->time_elapsed -= frames_advanced * animation->frame_duration;
    animation->current_frame = (animation->current_frame + frames_advanced) % animation->amount_frames;


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



int SDK_Sprite_SetRectColor(SDK_Sprite *rect_sprite, SDL_Color color){

    if(!rect_sprite || rect_sprite->sprite_type != SDK_RECT_SPRITE) return 1;

    SDK_RectSprite_Data *data = (SDK_RectSprite_Data *)rect_sprite->data;

    data->color = color;

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

    if(!display || !sprite) return 1;

    SDL_FRect *src_rect = NULL;
    SDL_Texture *texture = NULL;

    switch(sprite->sprite_type){

        case(SDK_ANIMATED_SPRITE):

            SDK_AnimatedSprite_Data *a_data = (SDK_AnimatedSprite_Data*)sprite->data;

            if(a_data->current_animation >= a_data->amount_animation){
                return 1;
            }

            SDK_Animation *animation = &a_data->animation[a_data->current_animation];

            src_rect = &animation->frames[animation->current_frame];
            texture = a_data->texture;
            
            break;

        case(SDK_STATIC_SPRITE):

            SDK_StaticSprite_Data *s_data = (SDK_StaticSprite_Data*)sprite->data;

            src_rect = &s_data->src_rect;
            texture = s_data->texture;
        
            break;

        case(SDK_RECT_SPRITE):

            SDK_RectSprite_Data *r_data = (SDK_RectSprite_Data *)sprite->data;

            src_rect = &sprite->render_rect;

            SDL_SetRenderDrawColor(display->renderer, r_data->color.r, r_data->color.g, r_data->color.b, r_data->color.a);
            
            bool result;

            if(r_data->is_filled){
                result = SDL_RenderFillRect(display->renderer, src_rect);
            } else{
                result = SDL_RenderRect(display->renderer, src_rect);
            }

            SDL_SetRenderDrawColor(display->renderer, 0, 0, 0, 0);

            if(!result) return 1;

            return 0;

        default: return 1;
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

    if(!sprite || new_scale <= 0.0f)
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

    } else if(sprite->sprite_type == SDK_RECT_SPRITE){

        SDK_RectSprite_Data *data = (SDK_RectSprite_Data*)sprite->data;

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
        for(uint16_t i = 0; i < data->amount_animation; i++){
            t_free(data->animation[i].frames);
        }
        t_free(data->animation);
        SDL_DestroyTexture(data->texture);
        t_free(sprite->data);

    } else if(sprite->sprite_type == SDK_STATIC_SPRITE){

        SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;
        SDL_DestroyTexture(data->texture);
        t_free(sprite->data);

    } else if(sprite->sprite_type == SDK_RECT_SPRITE){

       t_free(sprite->data); 

    }

    t_free(sprite);

}

