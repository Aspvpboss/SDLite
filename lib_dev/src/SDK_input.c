/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDK_input.h"


struct SDK_Input{

    bool *previous_keyboard;
    const bool *current_keyboard;
    int num_keys;
    SDL_MouseButtonFlags previous_mouse, current_mouse;
    SDL_FPoint mouse_pos;
    
};




SDK_Input* SDK_CreateInput(){
    
    SDK_Input *input = t_malloc(sizeof(SDK_Input));
    if(!input){
        return NULL;
    }

    input->current_keyboard = SDL_GetKeyboardState(&input->num_keys);
    input->previous_keyboard = t_malloc(sizeof(bool) * input->num_keys);
    if(input->previous_keyboard == NULL){
        t_free(input);
        return NULL;
    }
    input->current_keyboard = NULL;
    input->current_mouse = 0;
    input->previous_mouse = 0;

    input->mouse_pos.x = 0.0f;
    input->mouse_pos.y = 0.0f;

    return input;
}




void SDK_DestroyInput(SDK_Input *input){

    if(!input) return;

    t_free(input->previous_keyboard);
    t_free(input);

}




int SDK_Input_Update_PrevKeyState(SDK_Input *input){
    
    if(!input) return 1;

    if(input->current_keyboard == NULL)
        return 1;

    SDL_memcpy(input->previous_keyboard, input->current_keyboard, sizeof(bool) * input->num_keys);

    return 0;
}




int SDK_Input_KeyPressed(SDK_Input *input, SDL_Scancode scancode){

    if(!input) return -1;

    return input->current_keyboard[scancode];
}




int SDK_Input_KeyJustPressed(SDK_Input *input, SDL_Scancode scancode){

    if(!input) return -1;

    return input->current_keyboard[scancode] && !input->previous_keyboard[scancode];
}




int SDK_Input_KeyJustReleased(SDK_Input *input, SDL_Scancode scancode){

    if(!input) return -1;

    return !input->current_keyboard[scancode] && input->previous_keyboard[scancode];
}




int SDK_Input_Update_PrevMouseState(SDK_Input *input){

    if(!input) return 1;
    
    input->previous_mouse = input->current_mouse;

    return 0;
}




int SDK_Input_MousePressed(SDK_Input *input, uint32_t SDL_MouseButtonMask){

    if(!input) return -1;
    
    input->current_mouse = SDL_GetMouseState(NULL, NULL);

    return (input->current_mouse & SDL_MouseButtonMask) != 0;
}




int SDK_Input_MouseJustPressed(SDK_Input *input, uint32_t SDL_MouseButtonMask){
    
    if(!input) return -1;

    input->current_mouse = SDL_GetMouseState(NULL, NULL);

    return ((input->current_mouse & SDL_MouseButtonMask) && !(input->previous_mouse & SDL_MouseButtonMask)) != 0;
}




int SDK_Input_MouseJustReleased(SDK_Input *input, uint32_t SDL_MouseButtonMask){

    if(!input) return -1;
   
    input->current_mouse = SDL_GetMouseState(NULL, NULL);

    return (!(input->current_mouse & SDL_MouseButtonMask) && (input->previous_mouse & SDL_MouseButtonMask)) != 0;
}




int SDK_Input_Mouse_UpdatePosition(SDK_Input *input){

    if(!input) return 1;

    SDL_FPoint *mouse_pos = (SDL_FPoint *)&input->mouse_pos;

    SDL_GetMouseState((float *)&mouse_pos->x, (float *)&mouse_pos->y);

    return 0;
}




int SDK_Input_UpdateAllPrev(SDK_Input *input){
    
    if(SDK_Update_Previous_MouseState(input)) return 1;
    if(SDK_Update_Previous_KeyboardState(input)) return 1;
    if(SDK_Mouse_UpdatePosition(input)) return 1;
 
    return 0;   
}


