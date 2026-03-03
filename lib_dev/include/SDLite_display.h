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

typedef struct SDLite_Display SDLite_Display;

/*
    Creates a SDLite_Display 
    The SDLite_Display width and height get initialized with window_width and window_height

    SDLite_Display needs to be freed by SDLite_DestroyDisplay()

    returns SDLite_Display* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDLite_Display* SDLite_CreateDisplay(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flag);

/*
    Frees a SDLite_Display 

    Will return early if SDLite_Display is NULL
*/
SDK1_API void SDLite_DestroyDisplay(SDLite_Display *display);

/*
    Clears all rendered objects (SDLite_Sprite, SDLite_Text) from the screen

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDLite_DisplayClear(SDLite_Display *display);


/*
    Present all rendered objects (SDLite_Sprite, SDLite_Text) to the screen 

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDLite_DisplayPresent(SDLite_Display *display);


/*
    This sets a SDLite_Display to be windowed at a specified width and height

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDLite_DisplaySetWindowed(SDLite_Display *display, int width, int height);

/*
    Fills int* with width and height of window

    Will fail if SDLite_Display*, or if int* is NULL

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDLite_Display_GetSize(SDLite_Display *display, int *w, int *h);


/*
    This sets a SDLite_Display to be fullscreen, the width and height will be
    update to the size of the fullscreen window

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDLite_DisplaySetFullscreen(SDLite_Display *display);

/*
    Checks if the window is fullscreen or not

    Will fail if SDLite_Display* is NULL

    returns 0 or 1 if SDLite_Display* is fullscreen, returns -1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDLite_Display_IsFullscreen(SDLite_Display *display);


#ifdef __cplusplus
}
#endif


#endif
