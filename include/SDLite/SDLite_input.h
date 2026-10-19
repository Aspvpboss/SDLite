/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDLite_INPUT_H
#define SDLite_INPUT_H

#ifdef __cplusplus
extern "C"{
#endif


#include "SDLite/common_libs.h"

/*
    These functions should only be called on the main thread
*/
typedef struct SDLite_Input SDLite_Input;


/*
    Creates a SDLite_Input
    Use SDLite_Input_Mouse_GetPosition for mouse coordinates

    SDLite_Input must be freed with SDLite_DestroyInput

    returns SDLite_Input* for success, returns NULL for failure
    call SDL_GetError() for more info    
*/
SDLite_API SDLite_Input* SDLite_CreateInput(void);

/*
    Frees a SDLite_Input

    Will return early if SDLite_Input is NULL
*/
SDLite_API void SDLite_DestroyInput(SDLite_Input *input);

/*
    returns 1 if the specified keyboard key is pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDLite_API int SDLite_Input_KeyPressed(const SDLite_Input *input, SDL_Scancode scancode);

/*
    returns 1 if the specified keyboard key was just pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDLite_API int SDLite_Input_KeyJustPressed(const SDLite_Input *input, SDL_Scancode scancode);

/*
    returns 1 if the specified keyboard key was just released

    Function only fails if SDLite_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDLite_API int SDLite_Input_KeyJustReleased(const SDLite_Input *input, SDL_Scancode scancode);

/*
    Updates previous keyboard state
    This function must be called for just_pressed key logic to work
    You can call this after every keyboard input call or at the end of them all

    Function only fails if SDLite_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_API int SDLite_Input_Update_PrevKeyState(SDLite_Input *input);

/*
    returns 1 if the specified mouse button is pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDLite_API int SDLite_Input_MousePressed(const SDLite_Input *input, uint32_t SDL_MouseButtonMask);

/*
    returns 1 if the specified mouse button was just pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDLite_API int SDLite_Input_MouseJustPressed(const SDLite_Input *input, uint32_t SDL_MouseButtonMask);

/*
    returns 1 if the specified mouse button was just released

    Function only fails if SDLite_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDLite_API int SDLite_Input_MouseJustReleased(const SDLite_Input *input, uint32_t SDL_MouseButtonMask);


/*
    Polls mouse for (x,y) position and button states

    Function only fails if SDLite_Input* is NULL or if the SDL backend fails

    returns 0 for success, returns 1 for failure
*/
SDLite_API int SDLite_Input_Poll_Mouse(SDLite_Input *input);
/*
    Fills in values of the mouse x and y position into the int*

    Function only fails if SDLite_Input* or if either of the int* are NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_API int SDLite_Input_Mouse_GetPosition(const SDLite_Input *input, int *x, int *y);

/*
    Updates previous mouse state
    This function must be called for just_pressed logic to work

    Function only fails if SDLite_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_API int SDLite_Input_Update_PrevMouseState(SDLite_Input *input);

/*


    This function is for QOL, it calls these functions in this order

    SDLite_Input_Update_PrevMouseState
    SDLite_Input_Update_PrevKeyState
    SDLite_Input_Poll_Mouse 
    
    Function only fails if SDLite_Input* is NULL or if any of the sub functions fail

    returns 0 for success, returns 1 for failure
*/
SDLite_API int SDLite_Input_UpdateAllPrev(SDLite_Input *input);


#ifdef __cplusplus
}
#endif



#endif

