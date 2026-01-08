#ifndef SDK_SPRITE_H
#define SDK_SPRITE_H

#ifdef __cplusplus
extern "C"{
#endif


#include "../common_libs.h"
#include "../SDK_display.h"
#include "../SDK_time.h"




enum SDK_SpriteType{

    SDK_STATIC_SPRITE,
    SDK_ANIMATED_SPRITE

};





/*
    contains data for static / animated sprites
    enum SDK_SpriteType sprite_type determines whether it is animated or static
*/
typedef struct{

    const enum SDK_SpriteType sprite_type;
    void *data;

    SDL_FRect render_rect;
    SDL_FlipMode flip_mode;
    double scale;
    double angle;
    SDL_FPoint pivot_point;
    

} SDK_Sprite;




/*
    Creates a static SDK_Sprite with the specified attributes

    SDK_Sprite needs to be freed by SDK_DestroySprite()

    returns SDK_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite* SDK_Create_StaticSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);



/*
    Creates an animated SDK_Sprite with the specified attributes
    this doesn't add animations to the sprite yet, use SDK_Sprite_AddAnimation() to do so

    SDK_Sprite needs to be freed by SDK_DestroySprite()

    returns SDK_Sprite* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite* SDK_Create_AnimatedSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);


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

    returns SDL_Texture* for success, returns NULL for failure
*/
SDK1_API SDL_Texture* SDK_Sprite_GetTexture(SDK_Sprite *sprite);


/*
    Allocations storage for animations in the SDK_Sprite*

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
SDK1_API int SDK_Sprite_UpdateAnimation(SDK_Sprite *animated_sprite, SDK_Time *time);

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
SDK1_API int SDK_Sprite_SetPlayAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool play);



/*
    Sets the bool that loops the selected animation
    If you set the bool to true it will loop the animation
    If you set the bool to false it will stop looping the animatio

    Animation will not play if it isn't enabled by SDK_Sprite_EnableAnimation();

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_SetLoopAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool loop);



/*
    Sets the bool that enables the selected animation 
    If you set the bool to true it will enable the animation to play
    If you set the bool to false it will disable the animation from playing

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Sprite_EnableAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool enabled);




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
