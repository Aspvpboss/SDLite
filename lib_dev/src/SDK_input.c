#include "SDK_input.h"


typedef struct{

    bool *previous_keyboard;
    const bool *current_keyboard;
    int num_keys;
    SDL_MouseButtonFlags previous_mouse, current_mouse;

} Input_Data;


SDK_Input* SDK_CreateInput(){
    
    SDK_Input *input = t_malloc(sizeof(SDK_Input));
    if(!input){
        return NULL;
    }

    void **data_temp = (void **)&input->data;
    *data_temp = t_malloc(sizeof(Input_Data));
    if(!input->data){
        t_free(input);
        return NULL;
    }

    Input_Data *data = (Input_Data *const)input->data;

    SDL_GetKeyboardState(&data->num_keys);
    data->previous_keyboard = t_malloc(sizeof(bool) * data->num_keys);
    if(data->previous_keyboard == NULL){
        t_free(input->data);
        t_free(input);
        return NULL;
    }
    data->current_keyboard = NULL;
    data->current_mouse = 0;
    data->previous_mouse = 0;

    float *mouse_x = (float *)&input->mouse_x;
    *mouse_x = 0.0f;
    float *mouse_y = (float *)&input->mouse_y;
    *mouse_y = 0;

    return input;
}


void SDK_DestroyInput(SDK_Input *input){

    if(!input) return;

    Input_Data *data = (Input_Data *const)input->data;

    t_free(data->previous_keyboard);
    t_free(data);
    t_free(input);

}




int SDK_Update_Previous_KeyboardState(SDK_Input *input){
    
    if(!input) return 1;

    Input_Data *data = (Input_Data *const)input->data;

    if(data->current_keyboard == NULL)
        return 0;

    memcpy(data->previous_keyboard, data->current_keyboard, sizeof(bool) * data->num_keys);

    return 0;
}


int SDK_Keyboard_Pressed(SDK_Input *input, SDL_Scancode scancode){

    if(!input) return -1;

    Input_Data *data = (Input_Data *const)input->data;

    data->current_keyboard = SDL_GetKeyboardState(NULL);

    return data->current_keyboard[scancode];
}


int SDK_Keyboard_JustPressed(SDK_Input *input, SDL_Scancode scancode){

    if(!input) return -1;

    Input_Data *data = (Input_Data *const)input->data;
    
    data->current_keyboard = SDL_GetKeyboardState(NULL);

    return data->current_keyboard[scancode] && !data->previous_keyboard[scancode];
}


int SDK_Keyboard_JustReleased(SDK_Input *input, SDL_Scancode scancode){

    if(!input) return -1;

    Input_Data *data = (Input_Data *const)input->data;
    
    data->current_keyboard = SDL_GetKeyboardState(NULL);

    return !data->current_keyboard[scancode] && data->previous_keyboard[scancode];
}






int SDK_Update_Previous_MouseState(SDK_Input *input){

    if(!input) return 1;

    Input_Data *data = (Input_Data *const)input->data;
    
    data->previous_mouse = data->current_mouse;

    return 0;
}


int SDK_Mouse_Pressed(SDK_Input *input, uint32_t SDL_MouseButtonMask){
    input->current_mouse = SDL_GetMouseState(NULL, NULL);

    return (input->current_mouse & SDL_MouseButtonMask) != 0;
}


int SDK_Mouse_JustPressed(SDK_Input *input, uint32_t SDL_MouseButtonMask){
    input->current_mouse = SDL_GetMouseState(NULL, NULL);

    return ((input->current_mouse & SDL_MouseButtonMask) && !(input->previous_mouse & SDL_MouseButtonMask)) != 0;
}


int SDK_Mouse_JustReleased(SDK_Input *input, uint32_t SDL_MouseButtonMask){
    input->current_mouse = SDL_GetMouseState(NULL, NULL);

    return (!(input->current_mouse & SDL_MouseButtonMask) && (input->previous_mouse & SDL_MouseButtonMask)) != 0;
}

void SDK_Mouse_UpdatePosition(SDK_Input *input){
    SDL_GetMouseState(&input->mouse_x, &input->mouse_y);
}




void SDK_Update_Previous_Inputs(SDK_Input *input){
    SDK_Update_Previous_MouseState(input);
    SDK_Update_Previous_KeyboardState(input);
}
