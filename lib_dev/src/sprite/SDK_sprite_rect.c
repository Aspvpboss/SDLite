#include "sprite/SDK_sprite.h"
#include "SDK_sprite_internal.h"



int SDK_Sprite_SetRectColor(SDK_Sprite *rect_sprite, SDL_Color color){

    if(!rect_sprite || rect_sprite->sprite_type != SDK_RECT_SPRITE) return 1;

    SDK_RectSprite_Data *data = (SDK_RectSprite_Data *)rect_sprite->data;

    data->color = color;

    return 0;
}