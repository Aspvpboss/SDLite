/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "sprite/SDK_sprite.h"
#include "SDK_sprite_internal.h"




SDK_Sprite* SDK_Create_StaticSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect){

    if(!display) return NULL;


    SDK_Sprite *sprite = t_malloc(sizeof(SDK_Sprite));

    if(!sprite)
        return NULL;

    sprite->sprite_type = SDK_STATIC_SPRITE;

    void **data_t = (void **)&sprite->data;
    *data_t = t_malloc(sizeof(SDK_StaticSprite_Data));

    if(!sprite->data){
        t_free(sprite);
        return NULL;
    }

    SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;

    if(texture_path){
        data->texture = IMG_LoadTexture(display->renderer, texture_path);
        if(!data->texture){
            t_free(data);
            t_free(sprite);
            return NULL;
        }
    } else{
        data->texture = NULL;
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




int SDK_Sprite_SetTexture(SDK_Sprite *sprite, SDL_Texture *texture){

    if(!sprite || !texture) return 1;

    if(sprite->sprite_type == SDK_STATIC_SPRITE){
        SDK_StaticSprite_Data *data = (SDK_StaticSprite_Data*)sprite->data;
        data->texture = texture;
        texture->refcount++;
        return 0; 
    }

    if(sprite->sprite_type == SDK_ANIMATED_SPRITE){
        SDK_AnimatedSprite_Data *data = (SDK_AnimatedSprite_Data*)sprite->data;
        data->texture = texture;
        texture->refcount++; 
        return 0;
    }

    return 1;
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

int SDK_Sprite_GetScale(SDK_Sprite *sprite, double *scale){
    
    if(!sprite || !scale) return 1;

    *scale = sprite->scale;

    return 0;
}


int SDK_Sprite_SetScale(SDK_Sprite *sprite, double new_scale){

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




int SDK_Sprite_GetAngle(SDK_Sprite *sprite, double *angle){

    if(!sprite || !angle) return 1;

    *angle = sprite->angle;

    return 0;
}




int SDK_Sprite_SetAngle(SDK_Sprite *sprite, double angle){

    if(!sprite) return 1;

    sprite->angle = angle;

    return 0;
}




int SDK_Sprite_SetPivotPoint(SDK_Sprite *sprite, SDL_FPoint pivot_point){

    if(!sprite) return 1;

    sprite->pivot_point = pivot_point;

    return 0;
}




int SDK_Sprite_GetPivotPoint(SDK_Sprite *sprite, SDL_FPoint *pivot_point){

    if(!sprite || !pivot_point) return 1;

    *pivot_point = sprite->pivot_point;

    return 0;
}




int SDK_Sprite_SetFlipMode(SDK_Sprite *sprite, SDL_FlipMode flip_mode){

    if(!sprite) return 1;

    sprite->flip_mode = flip_mode;

    return 0;
}




int SDK_Sprite_GetFlipMode(SDK_Sprite *sprite, SDL_FlipMode *flip_mode){

    if(!sprite || !flip_mode) return 1;

    *flip_mode = sprite->flip_mode;

    return 0;
}




int SDK_Sprite_Set_Position(SDK_Sprite *sprite, SDL_FPoint position){

    if(!sprite) return 1;

    sprite->render_rect.x = position.x;
    sprite->render_rect.y = position.y;

    return 0;
}




int SDK_Sprite_Get_RenderRect(SDK_Sprite *sprite, SDL_FRect *render_rect){

    if(!sprite || !render_rect) return 1;

    *render_rect = sprite->render_rect;

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

