#include "sprite/SDK_rect_sprite.h"
#include "SDK_sprite_internal.h"




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




int SDK_Sprite_SetRectColor(SDK_Sprite *rect_sprite, SDL_Color color){

    if(!rect_sprite || rect_sprite->sprite_type != SDK_RECT_SPRITE) return 1;

    SDK_RectSprite_Data *data = (SDK_RectSprite_Data *)rect_sprite->data;

    data->color = color;

    return 0;
}