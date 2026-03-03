/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDLite_SPRITE_H
#define SDLite_SPRITE_H

#ifdef __cplusplus
extern "C"{
#endif


#include "../common_libs.h"
#include "../SDLite_display.h"
#include "../SDLite_time.h"


/*
    Three main sprite types

    Rect - renders a simple color rect, either filled or not filled 

    Static - renders a texture that was loaded from an image

    Animated - renders an animated texture, it uses the image as a spritesheet

*/
enum SDLite_SpriteType{

    SDLite_STATIC_SPRITE,
    SDLite_ANIMATED_SPRITE,
    SDLite_RECT_SPRITE

};

/*
    Only use this with stack arrays such as 'SDL_FRect frames[5];'
    This macro calculates the amounts of frames with the array
*/
#define SDLite_GET_ANIMATION_FRAMES(frames) sizeof(frames) / sizeof(SDL_FRect)



/*
    contains data for static / animated sprites
    enum SDLite_SpriteType sprite_type determines whether it is animated or static
*/
typedef struct{

    const enum SDLite_SpriteType sprite_type;
    void *const data;

    SDL_FRect render_rect;
    SDL_FlipMode flip_mode;
    double scale;
    double angle;
    SDL_FPoint pivot_point;
    

} SDLite_Sprite;




/*
    Creates a static SDLite_Sprite with the specified attributes

    SDLite_Sprite needs to be freed by SDLite_DestroySprite()

    returns SDLite_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDLite_DLL SDLite_Sprite* SDLite_Create_StaticSprite(SDLite_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);



/*
    Creates an animated SDLite_Sprite with the specified attributes
    this doesn't add animations to the sprite yet, use SDLite_Sprite_AddAnimation() to do so

    SDLite_Sprite needs to be freed by SDLite_DestroySprite()

    returns SDLite_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDLite_DLL SDLite_Sprite* SDLite_Create_AnimatedSprite(SDLite_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);



/*
    Creates a rectangle SDLite_Sprite with the specified attributes

    SDLite_Sprite needs to be freed by SDLite_DestroySprite()

    returns SDLite_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDLite_DLL SDLite_Sprite* SDLite_Create_RectSprite(SDL_FRect rect, SDL_Color color, bool is_filled);


/*
    Frees a SDLite_Sprite (whether animated or static)

    Will return early if SDLite_Sprite is NULL
*/
SDLite_DLL void SDLite_DestroySprite(SDLite_Sprite *sprite);

/*
    Renders a sprite onto the display

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_Render_Sprite(SDLite_Display *display, SDLite_Sprite *sprite);


/*
    Returns the SDL_Texture* of the given SDLite_Sprite*

    returns SDL_Texture* for success, returns NULL for failure
*/
SDLite_DLL SDL_Texture* SDLite_Sprite_GetTexture(SDLite_Sprite *sprite);


/*
    Allocations storage for animations in the SDLite_Sprite*

    Function will use realloc if called a multiple times 
    Recommended to just call this function once per sprite

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Sprite_AllocAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_capacity);


/*
    Adds an animation at the specified index in the animated_sprite

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_Sprite_AddAnimation(SDLite_Sprite *animated_sprite, SDL_FRect *frames, uint8_t amount_frames, double fps, uint16_t animation_index);

/*
    Updates frames of an animation, must be called once per frame for animations to work

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_Sprite_UpdateAnimation(SDLite_Sprite *animated_sprite, SDLite_Time *time);

/*
    Selects an animation within the SDLite_Sprite

    function will fail if 'animation_select' is greater than the amount of animations allocated in the sprite

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_Sprite_SelectAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index);


/*
    Sets the bool that plays the selected animation once
    
    If you set the bool to true it will play the animation once
    After the animation is done playing, the bool will be set to false

    If you set the bool to false while the animation is playing, the animation will simply reset and stop
    
    Animation will not play if it isn't enabled by SDLite_Sprite_EnableAnimation(); 

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Sprite_SetPlayAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index, bool play);



/*
    Sets the bool that loops the selected animation
    If you set the bool to true it will loop the animation
    If you set the bool to false it will stop looping the animatio

    Animation will not play if it isn't enabled by SDLite_Sprite_EnableAnimation();

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Sprite_SetLoopAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index, bool loop);



/*
    Sets the bool that enables the selected animation 
    If you set the bool to true it will enable the animation to play
    If you set the bool to false it will disable the animation from playing

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Sprite_EnableAnimation(SDLite_Sprite *animated_sprite, uint16_t animation_index, bool enabled);


/*
    Sets new color to rect SDLite_Sprite*

    Functions only fails if SDLite_Sprite* is NULL or if it isn't a SDLite_RECT_SPRITE 

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Sprite_SetRectColor(SDLite_Sprite *rect_sprite, SDL_Color color);

/*
    Scales the width and height of the render_rect relative to the original width and height when the sprite was created

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_Sprite_UpdateScale(SDLite_Sprite *sprite, double new_scale);


#ifdef __cplusplus
}
#endif


#endif  
