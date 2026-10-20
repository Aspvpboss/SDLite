#include "SDLite/sprite/SDLite_sprite.h"
#include "SDLite_sprite_internal.h"
#include "SDLite_display_internal.h"


SDLite_Sprite* SDLite_Create_AnimatedSprite(const SDLite_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }

    SDLite_Sprite *sprite = t_calloc(1, sizeof(SDLite_Sprite));

    if(!sprite){
        SDLite_SetError("Failed to allocate sprite");
        return NULL;
    }

    sprite->sprite_type = SDLite_ANIMATED_SPRITE;

    SDLite_AnimatedSprite_Data *data = &sprite->data._animated;

    if(texture_path){
        data->texture = SDLite_CreateTexture(display, texture_path);
        if(!data->texture){
            t_free(sprite);
            return NULL;
        }
    } else{
        data->texture = NULL;
    }

    data->amount_animation = 0;
    data->current_animation = 0;
    data->animation = NULL;
    data->base_width = src_rect.w;
    data->base_height = src_rect.h;

    sprite->pivot_point = (SDL_FPoint){src_rect.w / 2.0f, src_rect.h / 2.0f};
    sprite->angle = 0.0f;
    sprite->scale = 1.0f;
    sprite->flip_mode = SDL_FLIP_NONE;
    sprite->render_rect = (SDL_FRect){sprite_pos.x, sprite_pos.y, src_rect.w, src_rect.h};

    
    return sprite;
}




int SDLite_Sprite_AllocAnimation(SDLite_Sprite *animated_sprite, uint32_t animation_capacity){

    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE){
        SDLite_SetError("Sprite is not an animated sprite");
        return 1;
    }
    if(animation_capacity == 0){
        SDLite_SetError("Animation capacity cannot be 0");
        return 1;
    }

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;

    if(data->amount_animation == 0){

        data->animation = t_calloc(animation_capacity, sizeof(SDLite_Animation));
        if(!data->animation){
            SDLite_SetError("Failed to allocate animation buffer");
            return 1;
        }

    } else{

        if(data->amount_animation >= animation_capacity){
            SDLite_SetError("Animation capacity must be greater than current capacity");
            return 1;
        }

        SDLite_Animation *new_animation = t_realloc(data->animation, sizeof(SDLite_Animation) * animation_capacity);
        if(!new_animation){
            SDLite_SetError("Failed to allocate animation buffer");
            return 1;
        }
        memset(&new_animation[data->amount_animation], 0, sizeof(SDLite_Animation) * (animation_capacity - data->amount_animation));
        data->animation = new_animation;

    }

    data->amount_animation = animation_capacity;

    return 0;
}




int SDLite_Sprite_AddAnimation(SDLite_Sprite *animated_sprite, const SDL_FRect *frames, uint16_t amount_frames, double fps, uint16_t animation_index){

    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE){
        SDLite_SetError("Sprite is not an animated sprite");
        return 1;
    }
    if(!frames){
        SDLite_SetError("Frames array cannot be NULL");
        return 1;
    }

    if(amount_frames == 0){
        SDLite_SetError("Amount of frames cannot be 0");
        return 1;
    }
    if(fps <= 0.0f){
        SDLite_SetError("FPS must be greater than 0");
        return 1;
    }

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;

    if(animation_index >= data->amount_animation){
        SDLite_SetError("Animation index %u out of bounds", (unsigned int)animation_index);
        return 1;
    }

    SDLite_Animation *animation = &data->animation[animation_index];

    if(animation->frames){
        t_free(animation->frames);
        animation->amount_frames = 0;
    }
    animation->frames = t_calloc(amount_frames, sizeof(SDL_FRect));
    if(!animation->frames){
        SDLite_SetError("Failed to allocate frames buffer");
        return 1;
    }
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




int SDLite_Sprite_UpdateAnimation(SDLite_Sprite *animated_sprite, const SDLite_Time *time){

    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(!time){
        SDLite_SetError("Time handler is NULL");
        return 1;
    }

    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE)
        return 0;

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;

    if(data->current_animation >= data->amount_animation){
        SDLite_SetError("Animation index %u out of bounds", (unsigned int)data->current_animation);
        return 1;
    }

    SDLite_Animation *animation = &data->animation[data->current_animation];

    if(animation->amount_frames == 0 || animation->frame_duration == 0.0f){
        SDLite_SetError("Animation has 0 frames or invalid duration");
        return 1;
    }

    if((!animation->loop_animation && !animation->play_animation) || !animation->enable_animation){

        animation->current_frame = 0;
        animation->time_elapsed = 0.0f;

        return 0;
    }

    animation->time_elapsed += SDLite_Time_GetDT(time);

    if(animation->time_elapsed < animation->frame_duration)
        return 0;

    uint64_t frames_advanced = (uint64_t)(animation->time_elapsed / animation->frame_duration);
    animation->time_elapsed -= frames_advanced * animation->frame_duration;

    if(animation->current_frame + frames_advanced >= animation->amount_frames){
        animation->play_animation = false;
        if(!animation->loop_animation){
            animation->current_frame = 0;
            animation->time_elapsed = 0.0f;
            return 0;
        }
    }

    animation->current_frame = (uint16_t)((animation->current_frame + frames_advanced) % animation->amount_frames);

    return 0;
}




int SDLite_Sprite_SelectAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index){

    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE){
        SDLite_SetError("Sprite is not an animated sprite");
        return 1;
    }

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;

    if(animation_index >= data->amount_animation){
        SDLite_SetError("Animation index %u out of bounds", (unsigned int)animation_index);
        return 1;
    }

    data->current_animation = animation_index;

    return 0;
}




int SDLite_Sprite_SetPlayAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index, bool play){

    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE){
        SDLite_SetError("Sprite is not an animated sprite");
        return 1;
    }

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;
    if(animation_index >= data->amount_animation){
        SDLite_SetError("Animation index %u out of bounds", (unsigned int)animation_index);
        return 1;
    }

    data->animation[animation_index].play_animation = play;

    return 0;
}




int SDLite_Sprite_SetLoopAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index, bool loop){

    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE){
        SDLite_SetError("Sprite is not an animated sprite");
        return 1;
    }

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;
    if(animation_index >= data->amount_animation){
        SDLite_SetError("Animation index %u out of bounds", (unsigned int)animation_index);
        return 1;
    }

    data->animation[animation_index].loop_animation = loop;
    
    return 0;
}




int SDLite_Sprite_EnableAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index, bool enabled){
    
    if(!animated_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(animated_sprite->sprite_type != SDLite_ANIMATED_SPRITE){
        SDLite_SetError("Sprite is not an animated sprite");
        return 1;
    }

    SDLite_AnimatedSprite_Data *data = &animated_sprite->data._animated;
    if(animation_index >= data->amount_animation){
        SDLite_SetError("Animation index %u out of bounds", (unsigned int)animation_index);
        return 1;
    }
    
    data->animation[animation_index].enable_animation = enabled;

    return 0;
}