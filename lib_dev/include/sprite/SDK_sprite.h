/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_SPRITE_H
#define SDK_SPRITE_H

#ifdef __cplusplus
extern "C"{
#endif


#include "../common_libs.h"
#include "../SDK_display.h"
#include "../SDK_time.h"


/*
    Three main sprite types

    Rect - renders a simple color rect, either filled or not filled 

    Static - renders a texture that was loaded from an image

    Animated - renders an animated texture, it uses the image as a spritesheet

*/
enum SDK_SpriteType{

    SDK_STATIC_SPRITE,
    SDK_ANIMATED_SPRITE,
    SDK_RECT_SPRITE

};




/*
    contains data for static / animated sprites
    enum SDK_SpriteType sprite_type determines whether it is animated or static
*/
typedef struct{

    const enum SDK_SpriteType sprite_type;
    void *const data;

    SDL_FRect render_rect;
    SDL_FlipMode flip_mode;
    double scale;
    double angle;
    SDL_FPoint pivot_point;
    

} SDK_Sprite;




/*
    Creates a static SDK_Sprite with the specified attributes
    If texture_path is NULL then you must set a texture or else nothing will render
    SDK_Sprite needs to be freed by SDK_DestroySprite()

    returns SDK_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite* SDK_Create_StaticSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);


/*
    Frees a SDK_Sprite (whether animated or static)

    Will return early if SDK_Sprite is NULL
*/
SDK1_API void SDK_DestroySprite(SDK_Sprite *sprite);

/*
    Renders a sprite onto the display

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Render_Sprite(SDK_Display *display, SDK_Sprite *sprite);


/*
    Returns the SDL_Texture* of the given SDK_Sprite*

    will fail if SDK_Sprite* or SDL_Texture* are NULL, or if the SDK_Sprite* is a SDK_RECT_SPRITE 
    
    returns SDL_Texture* for success, returns NULL for failure
*/
SDK1_API SDL_Texture* SDK_Sprite_GetTexture(SDK_Sprite *sprite);

/*
    Sets the SDL_Texture* of the given SDK_Sprite*

    will fail if SDK_Sprite* or SDL_Texture* are NULL, or if the SDK_Sprite* is a SDK_RECT_SPRITE 

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetTexture(SDK_Sprite *sprite, SDL_Texture *texture);



/*
    Scales the width and height of the render_rect relative to the original width and height when the sprite was created

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Sprite_UpdateScale(SDK_Sprite *sprite, double new_scale);


#ifdef __cplusplus
}
#endif


#endif  
