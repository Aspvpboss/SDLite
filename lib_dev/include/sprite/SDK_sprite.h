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
#include "SDK_display.h"
#include "SDK_time.h"


/*
    Three main sprite types

    Rect - renders a simple color rect, either filled or not filled 

    Static - renders a texture that was loaded from an image

    Animated - renders an animated texture, it uses the image as a spritesheet

*/


typedef struct SDK_Sprite SDK_Sprite;


/* ============== Static sprite / general sprite functions ============== */



/*
    Creates a static SDK_Sprite with the specified attributes
    If texture_path is NULL then you must set a texture or else nothing will render
    SDK_Sprite needs to be freed by SDK_DestroySprite()

    returns SDK_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite* SDK_Create_StaticSprite(
    const SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);


/*
    Frees a SDK_Sprite (whether animated, static, or rect)

    Will return early if SDK_Sprite is NULL
*/
SDK1_API void SDK_DestroySprite(SDK_Sprite *sprite);

/*
    Renders a sprite onto the display

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Render_Sprite(const SDK_Display *display, const SDK_Sprite *sprite);


/*
    Returns the SDL_Texture* of the given SDK_Sprite*

    will fail if SDK_Sprite* or SDL_Texture* are NULL, or if the SDK_Sprite* is a SDK_RECT_SPRITE 
    
    returns SDL_Texture* for success, returns NULL for failure
*/
SDK1_API SDL_Texture* SDK_Sprite_GetTexture(const SDK_Sprite *sprite);

/*
    Sets the SDL_Texture* of the given SDK_Sprite*
    The SDL_Texture* is used when rendering the SDK_Sprite*

    Will fail if SDK_Sprite* or SDL_Texture* are NULL, or if the SDK_Sprite* is a SDK_RECT_SPRITE 

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetTexture(SDK_Sprite *sprite, SDL_Texture *texture);


/*
    Fills in double* with the scale of the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL or if double* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_GetScale(const SDK_Sprite *sprite, double *scale);

/*
    Scales the width and height of the render_rect relative to the original width and height when the sprite was created
    The scale is used when rendering the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL or if the new_scale <= 0.0f

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetScale(SDK_Sprite *sprite, double new_scale);



/*
    Fills in double* with the angle in degrees of the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL or if double* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_GetAngle(const SDK_Sprite *sprite, double *angle);


/*
    Sets the angle in degrees of the SDK_Sprite*
    The angle is used for rendering the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetAngle(SDK_Sprite *sprite, double angle);


/*
    Fills in SDL_FPoint* with the SDL_FPoint of the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL or if SDL_FPoint* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_GetPivotPoint(const SDK_Sprite *sprite, SDL_FPoint *pivot_point);

/*
    Sets the pivot_point of the SDK_Sprite*
    The pivot_point is where on the sprite it rotates around when rendered

    Will fail if SDK_Sprite* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetPivotPoint(SDK_Sprite *sprite, SDL_FPoint pivot_point);


/*
    Fills in SDL_FPoint* with the SDL_FlipMode of the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL or if SDL_FlipMode* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_GetFlipMode(const SDK_Sprite *sprite, SDL_FlipMode *flip_mode);


/*
    Sets the SDL_FlipMode of the SDK_Sprite*
    The SDL_FlipMode is used when rendering the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetFlipMode(SDK_Sprite *sprite, SDL_FlipMode flip_mode);


/*
    Fills in SDL_FRect* with the render_rect of the SDK_Sprite*

    Will fail if SDK_Sprite* is NULL or if SDL_FRect* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_Get_RenderRect(const SDK_Sprite *sprite, SDL_FRect *render_rect);



/*
    Sets the position of the SDK_Sprite*
    This changes the x & y parameters of the render_rect used for rendering

    Will fail if SDK_Sprite* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_Set_Position(SDK_Sprite *sprite, SDL_FPoint position);




/* ============== Animated sprite functions ============== */



/*
    Only use this with stack arrays such as 'SDL_FRect frames[5];'
    This macro calculates the amounts of frames with the array
*/
#define SDK_GET_ANIMATION_FRAMES(frames) sizeof(frames) / sizeof(SDL_FRect)



/*
    Creates an animated SDK_Sprite with the specified attributes
    this doesn't add animations to the sprite yet, use SDK_Sprite_AddAnimation() to do so
    
    If texture_path is NULL then you must set a texture using SDK_Sprite_SetTexture() or else nothing will render
    SDK_Sprite needs to be freed by SDK_DestroySprite()

    returns SDK_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite* SDK_Create_AnimatedSprite(
    const SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);




/*
    Allocates storage for animations in the SDK_Sprite*

    Function will use realloc if called a multiple times 
    Recommended to just call this function once per sprite

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_AllocAnimation(SDK_Sprite *animated_sprite, uint16_t animation_capacity);


/*
    Adds an animation at the specified index in the animated_sprite

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Sprite_AddAnimation(SDK_Sprite *animated_sprite, SDL_FRect *frames, uint8_t amount_frames, double fps, uint16_t animation_index);

/*
    Updates frames of an animation, must be called once per frame for animations to work

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Sprite_UpdateAnimation(const SDK_Sprite *animated_sprite, SDK_Time *time);

/*
    Selects an animation within the SDK_Sprite

    function will fail if 'animation_select' is greater than the amount of animations allocated in the sprite

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Sprite_SelectAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index);


/*
    Sets the bool that plays the selected animation once
    
    If you set the bool to true it will play the animation once
    After the animation is done playing, the bool will be set to false

    If you set the bool to false while the animation is playing, the animation will simply reset and stop
    
    Animation will not play if it isn't enabled by SDK_Sprite_EnableAnimation(); 

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetPlayAnimation(const SDK_Sprite *animated_sprite, uint16_t animation_index, bool play);



/*
    Sets the bool that loops the selected animation
    If you set the bool to true it will loop the animation
    If you set the bool to false it will stop looping the animatio

    Animation will not play if it isn't enabled by SDK_Sprite_EnableAnimation();

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetLoopAnimation(const SDK_Sprite *animated_sprite, uint16_t animation_index, bool loop);



/*
    Sets the bool that enables the selected animation 
    If you set the bool to true it will enable the animation to play
    If you set the bool to false it will disable the animation from playing

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_EnableAnimation(const SDK_Sprite *animated_sprite, uint16_t animation_index, bool enabled);



/* ============== Rect sprite functions ============== */



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





#ifdef __cplusplus
}
#endif


#endif  
