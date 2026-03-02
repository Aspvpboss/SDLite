/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_DISPLAY_H
#define SDK_DISPLAY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "common_libs.h"

typedef struct SDK_Display SDK_Display;

/*
    Creates a SDK_Display 
    The SDK_Display width and height get initialized with window_width and window_height

    SDK_Display needs to be freed by SDK_DestroyDisplay()

    returns SDK_Display* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Display* SDK_CreateDisplay(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flag);

/*
    Frees a SDK_Display 

    Will return early if SDK_Display is NULL
*/
SDK1_API void SDK_DestroyDisplay(SDK_Display *display);

/*
    Clears all rendered objects (SDK_Sprite, SDK_Text) from the screen

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_DisplayClear(SDK_Display *display);


/*
    Present all rendered objects (SDK_Sprite, SDK_Text) to the screen 

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_DisplayPresent(SDK_Display *display);


/*
    This sets a SDK_Display to be windowed at a specified width and height

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_DisplaySetWindowed(SDK_Display *display, int width, int height);

/*
    Fills int* with width and height of window

    Will fail if SDK_Display*, or if int* is NULL

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Display_GetSize(SDK_Display *display, int *w, int *h);


/*
    This sets a SDK_Display to be fullscreen, the width and height will be
    update to the size of the fullscreen window

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_DisplaySetFullscreen(SDK_Display *display);

/*
    Checks if the window is fullscreen or not

    Will fail if SDK_Display* is NULL

    returns 0 or 1 if SDK_Display* is fullscreen, returns -1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Display_IsFullscreen(SDK_Display *display);


#ifdef __cplusplus
}
#endif


#endif
