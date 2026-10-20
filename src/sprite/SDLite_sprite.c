/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDLite/sprite/SDLite_sprite.h"
#include "SDLite_sprite_internal.h"
#include "SDLite_display_internal.h"



SDLite_Sprite* SDLite_Create_StaticSprite(const SDLite_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }

    SDLite_Sprite *sprite = t_calloc(1, sizeof(SDLite_Sprite));

    if(!sprite){
        SDLite_SetError("Failed to allocate sprite");
        return NULL;
    }

    sprite->sprite_type = SDLite_STATIC_SPRITE;

    SDLite_StaticSprite_Data *data = &sprite->data._static;

    if(texture_path){
        data->texture = SDLite_CreateTexture(display, texture_path); 
        if(!data->texture){
            t_free(sprite);
            return NULL;
        }
    } else{
        data->texture = NULL;
    }

     
    data->base_width = src_rect.w;
    data->base_height = src_rect.h;
    data->src_rect = src_rect;

    sprite->pivot_point = (SDL_FPoint){src_rect.w / 2.0f, src_rect.h / 2.0f};
    sprite->angle = 0.0f;
    sprite->scale = 1.0f;
    sprite->flip_mode = SDL_FLIP_NONE;

    sprite->render_rect = (SDL_FRect){sprite_pos.x, sprite_pos.y, src_rect.w, src_rect.h};
    
    return sprite;
}




int SDLite_Sprite_SetTexture(SDLite_Sprite *sprite, SDLite_Texture *texture){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(!texture){
        SDLite_SetError("Texture is NULL");
        return 1;
    }

    if(sprite->sprite_type == SDLite_STATIC_SPRITE){
        SDLite_StaticSprite_Data *data = &sprite->data._static;
        if(data->texture == texture){
            SDLite_SetError("Texture is identical to current texture");
            return 1;
        }
        if(data->texture) SDLite_DestroyTexture(&data->texture);
        data->texture = texture;
        texture->refs++;
        return 0; 
    }

    if(sprite->sprite_type == SDLite_ANIMATED_SPRITE){
        SDLite_AnimatedSprite_Data *data = &sprite->data._animated;
        if(data->texture == texture){
            SDLite_SetError("Texture is identical to current texture");
            return 1;
        }
        if(data->texture) SDLite_DestroyTexture(&data->texture);
        data->texture = texture;
        texture->refs++; 
        return 0;
    }

    SDLite_SetError("Sprite type does not support textures");
    return 1;
}




SDL_Texture* SDLite_Sprite_GetSDLTexture(const SDLite_Sprite *sprite){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return NULL;
    }

    if(sprite->sprite_type == SDLite_STATIC_SPRITE){
        const SDLite_StaticSprite_Data *data = &sprite->data._static;
        if(!data->texture){
            SDLite_SetError("Sprite texture is NULL");
            return NULL;
        }
        return data->texture->texture;
    }

    if(sprite->sprite_type == SDLite_ANIMATED_SPRITE){
        const SDLite_AnimatedSprite_Data *data = &sprite->data._animated;
        if(!data->texture){
            SDLite_SetError("Sprite texture is NULL");
            return NULL;
        }
        return data->texture->texture;
    }

    SDLite_SetError("Sprite type does not support textures");
    return NULL;
}




int SDLite_Render_Sprite(const SDLite_Display *display, const SDLite_Sprite *sprite){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 1;
    }
    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }

    const SDL_FRect *src_rect = NULL;
    SDLite_Texture *texture = NULL;
    
    switch(sprite->sprite_type){

        case(SDLite_ANIMATED_SPRITE): {

            const SDLite_AnimatedSprite_Data *a_data = &sprite->data._animated;

            if(a_data->current_animation >= a_data->amount_animation){
                SDLite_SetError("Animation index %u out of bounds", (unsigned int)a_data->current_animation);
                return 1;
            }

            const SDLite_Animation *animation = &a_data->animation[a_data->current_animation];
            if(animation->amount_frames == 0){
                SDLite_SetError("Animation has 0 frames");
                return 1;
            }

            src_rect = &animation->frames[animation->current_frame];
            texture = a_data->texture;
            if(!texture){
                SDLite_SetError("Animated sprite texture is NULL");
                return 1;
            }
            
            break;
        }

        case(SDLite_STATIC_SPRITE): {

            const SDLite_StaticSprite_Data *s_data = &sprite->data._static;

            src_rect = &s_data->src_rect;
            texture = s_data->texture;
            if(!texture){
                SDLite_SetError("Static sprite texture is NULL");
                return 1;
            }
            
            break;
        }

        case(SDLite_RECT_SPRITE): {

            const SDLite_RectSprite_Data *r_data = &sprite->data._rect;

            src_rect = &sprite->render_rect;

            if(!SDL_SetRenderDrawColor(display->renderer, r_data->color.r, r_data->color.g, r_data->color.b, r_data->color.a)){
                SDLite_SetError("SDL_SetRenderDrawColor failed: %s", SDL_GetError());
                return 1;
            }

            if(r_data->is_filled){
                if(!SDL_RenderFillRect(display->renderer, src_rect)){
                    SDLite_SetError("SDL_RenderFillRect failed: %s", SDL_GetError());
                    return 1;
                }
            } else{
                if(!SDL_RenderRect(display->renderer, src_rect)){
                    SDLite_SetError("SDL_RenderRect failed: %s", SDL_GetError());
                    return 1;
                }
            }

            if(!SDL_SetRenderDrawColor(display->renderer, 0, 0, 0, 0)){
                SDLite_SetError("SDL_SetRenderDrawColor failed: %s", SDL_GetError());
                return 1;
            }

            return 0;
        }

        default: {
            SDLite_SetError("Unknown sprite type");
            return 1;
        }
    }

    SDL_Texture *sdl_texture = texture->texture;
    if(!sdl_texture){
        SDLite_SetError("SDL texture is NULL");
        return 1;
    }

    if(sprite->angle == 0.0f && sprite->flip_mode == SDL_FLIP_NONE){

        if(!SDL_RenderTexture(display->renderer, sdl_texture, src_rect, &sprite->render_rect)){
            SDLite_SetError("SDL_RenderTexture failed: %s", SDL_GetError());
            return 1;
        }

    } else{

        if(!SDL_RenderTextureRotated(display->renderer, sdl_texture, src_rect, &sprite->render_rect, sprite->angle, &sprite->pivot_point, sprite->flip_mode)){
            SDLite_SetError("SDL_RenderTextureRotated failed: %s", SDL_GetError());
            return 1;
        }

    }

    return 0;
}

int SDLite_Sprite_GetScale(const SDLite_Sprite *sprite, double *scale){
    
    if(!sprite || !scale){
        SDLite_SetError("Invalid argument in SDLite_Sprite_GetScale");
        return 1;
    }

    *scale = sprite->scale;

    return 0;
}


int SDLite_Sprite_SetScale(SDLite_Sprite *sprite, double new_scale){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(new_scale <= 0.0f){
        SDLite_SetError("Scale must be greater than 0");
        return 1;
    }


    if(sprite->sprite_type == SDLite_STATIC_SPRITE){

        SDLite_StaticSprite_Data *data = &sprite->data._static;

        SDL_FRect *render_rect = &sprite->render_rect;
        sprite->scale = new_scale;

        render_rect->w = data->base_width * new_scale;
        render_rect->h = data->base_height * new_scale;
    
    } else if(sprite->sprite_type == SDLite_ANIMATED_SPRITE){

        SDLite_AnimatedSprite_Data *data = &sprite->data._animated;

        SDL_FRect *render_rect = &sprite->render_rect;
        sprite->scale = new_scale;

        render_rect->w = data->base_width * new_scale;
        render_rect->h = data->base_height * new_scale;

    } else if(sprite->sprite_type == SDLite_RECT_SPRITE){

        SDLite_RectSprite_Data *data = &sprite->data._rect;

        SDL_FRect *render_rect = &sprite->render_rect;
        sprite->scale = new_scale;

        render_rect->w = data->base_width * new_scale;
        render_rect->h = data->base_height * new_scale;

    }  

    return 0;
}




int SDLite_Sprite_GetAngle(const SDLite_Sprite *sprite, double *angle){

    if(!sprite || !angle){
        SDLite_SetError("Invalid argument in SDLite_Sprite_GetAngle");
        return 1;
    }

    *angle = sprite->angle;

    return 0;
}




int SDLite_Sprite_SetAngle(SDLite_Sprite *sprite, double angle){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }

    sprite->angle = angle;

    return 0;
}




int SDLite_Sprite_SetPivotPoint(SDLite_Sprite *sprite, SDL_FPoint pivot_point){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }

    sprite->pivot_point = pivot_point;

    return 0;
}




int SDLite_Sprite_GetPivotPoint(const SDLite_Sprite *sprite, SDL_FPoint *pivot_point){

    if(!sprite || !pivot_point){
        SDLite_SetError("Invalid argument in SDLite_Sprite_GetPivotPoint");
        return 1;
    }

    *pivot_point = sprite->pivot_point;

    return 0;
}




int SDLite_Sprite_SetFlipMode(SDLite_Sprite *sprite, SDL_FlipMode flip_mode){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }

    sprite->flip_mode = flip_mode;

    return 0;
}




int SDLite_Sprite_GetFlipMode(const SDLite_Sprite *sprite, SDL_FlipMode *flip_mode){

    if(!sprite || !flip_mode){
        SDLite_SetError("Invalid argument in SDLite_Sprite_GetFlipMode");
        return 1;
    }

    *flip_mode = sprite->flip_mode;

    return 0;
}




int SDLite_Sprite_Set_Position(SDLite_Sprite *sprite, SDL_FPoint position){

    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }

    sprite->render_rect.x = position.x;
    sprite->render_rect.y = position.y;

    return 0;
}




int SDLite_Sprite_Get_RenderRect(const SDLite_Sprite *sprite, SDL_FRect *render_rect){

    if(!sprite || !render_rect){
        SDLite_SetError("Invalid argument in SDLite_Sprite_Get_RenderRect");
        return 1;
    }

    *render_rect = sprite->render_rect;

    return 0;
}




void SDLite_DestroySprite(SDLite_Sprite *sprite){

    if(!sprite) return;

    if(sprite->sprite_type == SDLite_ANIMATED_SPRITE){

        SDLite_AnimatedSprite_Data *data = &sprite->data._animated;
        for(uint32_t i = 0; i < data->amount_animation; i++){
            t_free(data->animation[i].frames);
        }
        t_free(data->animation);
        SDLite_DestroyTexture(&data->texture);

    } else if(sprite->sprite_type == SDLite_STATIC_SPRITE){

        SDLite_StaticSprite_Data *data = &sprite->data._static;
        SDLite_DestroyTexture(&data->texture);

    }

    t_free(sprite);

}

