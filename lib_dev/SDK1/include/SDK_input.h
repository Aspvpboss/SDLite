/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_INPUT_H
#define SDK_INPUT_H

#ifdef __cplusplus
extern "C"{
#endif


#include "common_libs.h"

/*
    read from SDL_FPoint for mouse_pos
*/
typedef struct{

    void *const data;
    const SDL_FPoint mouse_pos;

} SDK_Input;



/*
    Creates a SDK_Input
    Access mouse_x && mouse_y for mouse coordiates

    SDK_Input must be freed with SDK_DestroyInput

    returns SDK_Input* for success, returns NULL for failure
    call SDL_GetError() for more info    
*/
SDK1_API SDK_Input* SDK_CreateInput();

/*
    Frees a SDK_Input

    Will return early if SDK_Input is NULL
*/
SDK1_API void SDK_DestroyInput(SDK_Input *input);


/*
    returns 1 if the specified keyboard key i pressed

    Function only fails if SDK_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDK1_API int SDK_Keyboard_Pressed(SDK_Input *input, SDL_Scancode scancode);

/*
    returns 1 if the specified keyboard key was just pressed

    Function only fails if SDK_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDK1_API int SDK_Keyboard_JustPressed(SDK_Input *input, SDL_Scancode scancode);

/*
    returns 1 if the specified keyboard key was just released

    Function only fails if SDK_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDK1_API int SDK_Keyboard_JustReleased(SDK_Input *input, SDL_Scancode scancode);

/*
    Updates previous keyboard state
    This function must be called for just_pressed logic to work
    You can call this after every keyboard input call or at the end of them all

    Function only fails if SDK_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Update_Previous_KeyboardState(SDK_Input *input);


/*
    returns 1 if the specified mouse button is pressed

    Function only fails if SDK_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDK1_API int SDK_Mouse_Pressed(SDK_Input *input, uint32_t SDL_MouseButtonMask);

/*
    returns 1 if the specified mouse button was just pressed

    Function only fails if SDK_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDK1_API int SDK_Mouse_JustPressed(SDK_Input *input, uint32_t SDL_MouseButtonMask);

/*
    returns 1 if the specified mouse button was just released

    Function only fails if SDK_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDK1_API int SDK_Mouse_JustReleased(SDK_Input *input, uint32_t SDL_MouseButtonMask);

/*
    updates mouse x and y position to the current mouse position within SDK_Input

    Function only fails if SDK_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Mouse_UpdatePosition(SDK_Input *input);

/*
    Updates previous mouse state
    This function must be called for just_pressed logic to work
    You can call this after every keyboard input call or at the end of them all

    Function only fails if SDK_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Update_Previous_MouseState(SDK_Input *input);

/*
    calls both SDK_Update_Previous_MouseState
    and SDK_Update_Previous_KeyboardState

    This is for QOL

    Function only fails if SDK_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Update_Previous_Inputs(SDK_Input *input);


#ifdef __cplusplus
}
#endif



#endif

