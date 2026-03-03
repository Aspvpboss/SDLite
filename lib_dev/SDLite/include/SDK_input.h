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


#include "common_libs.h"

/*
    read from SDL_FPoint for mouse_pos
*/
typedef struct{

    void *const data;
    const SDL_FPoint mouse_pos;

} SDLite_Input;



/*
    Creates a SDLite_Input
    Access mouse_x && mouse_y for mouse coordiates

    SDLite_Input must be freed with SDLite_DestroyInput

    returns SDLite_Input* for success, returns NULL for failure
    call SDL_GetError() for more info    
*/
SDLite_DLL SDLite_Input* SDLite_CreateInput();

/*
    Frees a SDLite_Input

    Will return early if SDLite_Input is NULL
*/
SDLite_DLL void SDLite_DestroyInput(SDLite_Input *input);


/*
    returns 1 if the specified keyboard key i pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDLite_DLL int SDLite_Keyboard_Pressed(SDLite_Input *input, SDL_Scancode scancode);

/*
    returns 1 if the specified keyboard key was just pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDLite_DLL int SDLite_Keyboard_JustPressed(SDLite_Input *input, SDL_Scancode scancode);

/*
    returns 1 if the specified keyboard key was just released

    Function only fails if SDLite_Input* is NULL

    returns 0 for no keyboard key pressed, returns 1 for keyboard key pressed, returns -1 for failure
*/
SDLite_DLL int SDLite_Keyboard_JustReleased(SDLite_Input *input, SDL_Scancode scancode);

/*
    Updates previous keyboard state
    This function must be called for just_pressed logic to work
    You can call this after every keyboard input call or at the end of them all

    Function only fails if SDLite_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Update_Previous_KeyboardState(SDLite_Input *input);


/*
    returns 1 if the specified mouse button is pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDLite_DLL int SDLite_Mouse_Pressed(SDLite_Input *input, uint32_t SDL_MouseButtonMask);

/*
    returns 1 if the specified mouse button was just pressed

    Function only fails if SDLite_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDLite_DLL int SDLite_Mouse_JustPressed(SDLite_Input *input, uint32_t SDL_MouseButtonMask);

/*
    returns 1 if the specified mouse button was just released

    Function only fails if SDLite_Input* is NULL

    returns 0 for no mouse button pressed, returns 1 for mouse button pressed, returns -1 for failure
*/
SDLite_DLL int SDLite_Mouse_JustReleased(SDLite_Input *input, uint32_t SDL_MouseButtonMask);

/*
    updates mouse x and y position to the current mouse position within SDLite_Input

    Function only fails if SDLite_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Mouse_UpdatePosition(SDLite_Input *input);

/*
    Updates previous mouse state
    This function must be called for just_pressed logic to work
    You can call this after every keyboard input call or at the end of them all

    Function only fails if SDLite_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Update_Previous_MouseState(SDLite_Input *input);

/*
    calls both SDLite_Update_Previous_MouseState
    and SDLite_Update_Previous_KeyboardState

    This is for QOL

    Function only fails if SDLite_Input* is NULL

    returns 0 for success, returns 1 for failure
*/
SDLite_DLL int SDLite_Update_Previous_Inputs(SDLite_Input *input);


#ifdef __cplusplus
}
#endif



#endif

