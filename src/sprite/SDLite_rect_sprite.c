#include "SDLite/sprite/SDLite_sprite.h"
#include "SDLite_sprite_internal.h"




SDLite_Sprite* SDLite_Create_RectSprite(SDL_FRect rect, SDL_Color color, bool is_filled){

    SDLite_Sprite *sprite = t_calloc(1, sizeof(SDLite_Sprite));

    if(!sprite){
        SDLite_SetError("Failed to allocate sprite");
        return NULL;
    }

    sprite->sprite_type = SDLite_RECT_SPRITE;

    SDLite_RectSprite_Data *data = &sprite->data._rect;
  
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




int SDLite_Sprite_SetRectColor(SDLite_Sprite *rect_sprite, SDL_Color color){

    if(!rect_sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }
    if(rect_sprite->sprite_type != SDLite_RECT_SPRITE){
        SDLite_SetError("Sprite is not a rect sprite");
        return 1;
    }

    SDLite_RectSprite_Data *data = &rect_sprite->data._rect;

    data->color = color;

    return 0;
}