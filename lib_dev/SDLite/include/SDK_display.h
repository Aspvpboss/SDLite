/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDLite_DISPLAY_H
#define SDLite_DISPLAY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "common_libs.h"

/*
    SDLite_Display contains variables needed for SDK functions
    
    width and height are the dimensions of the display
*/
typedef struct{

    SDL_Window *window;
    SDL_WindowFlags window_flag;
    SDL_Renderer *renderer;
    TTF_TextEngine *text_engine;
    const int width; 
    const int height;

} SDLite_Display;


/*
    Creates a SDLite_Display 
    The SDLite_Display width and height get initialized with window_width and window_height

    SDLite_Display needs to be freed by SDLite_DestroyDisplay()

    returns SDLite_Display* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDLite_DLL SDLite_Display* SDLite_CreateDisplay(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flag);

/*
    Frees a SDLite_Display 

    Will return early if SDLite_Display is NULL
*/
SDLite_DLL void SDLite_DestroyDisplay(SDLite_Display *display);

/*
    Clears all rendered objects (SDLite_Sprite, SDLite_Text) from the screen

    returns 0 for success, returns 1 for failure
*/
static inline int SDLite_DisplayClear(SDLite_Display *display){
    return !SDL_RenderClear(display->renderer);
}


/*
    Present all rendered objects (SDLite_Sprite, SDLite_Text) to the screen 

    returns 0 for success, returns 1 for failure
*/
static inline int SDLite_DisplayPresent(SDLite_Display *display){
    return !SDL_RenderPresent(display->renderer);
}


/*
    This sets a SDLite_Display to be windowed at a specified width and height

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_DisplaySetWindowed(SDLite_Display *display, int width, int height);


/*
    This sets a SDLite_Display to be fullscreen, the width and height will be
    update to the size of the fullscreen window

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_DisplaySetFullscreen(SDLite_Display *display);

#ifdef __cplusplus
}
#endif


#endif
