#ifndef SDK_RECT_SPRITE_H
#define SDK_RECT_SPRITE_H

#include "sprite/SDK_sprite.h"

/*
    Creates a rectangle SDK_Sprite with the specified attributes
    If texture_path is NULL then you must set a texture using SDK_Sprite_SetTexture() or else nothing will render
    SDK_Sprite needs to be freed by SDK_DestroySprite()

    returns SDK_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite* SDK_Create_RectSprite(SDL_FRect rect, SDL_Color color, bool is_filled);




/*
    Sets new color to rect SDK_Sprite*

    Functions only fails if SDK_Sprite* is NULL or if it isn't a SDK_RECT_SPRITE 

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetRectColor(SDK_Sprite *rect_sprite, SDL_Color color);




#endif