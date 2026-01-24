
#define SDL_MAIN_USE_CALLBACKS 1

#include "init.h"
#include <SDL3/SDL_main.h>


SDL_AppResult SDL_AppInit(void **appstate, int argc, char *argv[]){

    SDK_Init(NULL, NULL, true, true, false);

    (*appstate) = t_malloc(sizeof(Appstate));
    Appstate *state = (Appstate*)(*appstate);

    state->display = SDK_CreateDisplay("SDK game", 1000, 800, SDL_WINDOW_MAXIMIZED);
    if(!state->display){
        SDL_Log("Error: %s\n", SDL_GetError());
        return SDL_APP_FAILURE;
    }

    state->time = SDK_CreateTime(144);
    if(!state->time){
        SDL_Log("Error: %s\n", SDL_GetError());
        return SDL_APP_FAILURE;
    }

    state->input = SDK_CreateInput();
    if(!state->input){
        SDL_Log("Error: %s\n", SDL_GetError());
        return SDL_APP_FAILURE;
    }

    state->fps_text = SDK_CreateText(state->display, NULL, 30, 0, 0, (SDL_Color){255, 255, 255, 255});
    if(!state->fps_text){
        SDL_Log("Error: %s\n", SDL_GetError());
        return SDL_APP_FAILURE;        
    }

    
    return SDL_APP_CONTINUE;
}