
#define SDL_MAIN_USE_CALLBACKS 1

#include "init.h"
#include "update.h"
#include "quit.h"
#include "SDL3/SDL_main.h"
#include <time.h>

Gamestate gamestate;



Appstate* init_appstate(){

    Appstate *state = t_malloc(sizeof(Appstate));
    if(!state) return NULL;

    state->gameplay = NULL;
    state->main_menu = NULL;
    state->win_menu = NULL;

    state->input = NULL;
    state->time = NULL;
    state->display = NULL;
    state->window_height = WINDOW_START_HEIGHT;
    state->window_width = WINDOW_START_WIDTH;
    state->winning_score = 10;

    state->display = SDLite_CreateDisplay("Pong", state->window_width, state->window_height, SDL_WINDOW_MAXIMIZED);
    
    if(!state->display){
        free_appstate(state);
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    SDL_Window *window = SDLite_Display_GetSDLWindow(state->display);
    SDL_DisplayID display_id = SDL_GetPrimaryDisplay();
    SDL_Rect display_bounds;
    SDL_GetDisplayBounds(display_id, &display_bounds);
    SDL_SetWindowMaximumSize(window, display_bounds.w, display_bounds.h); 
    SDL_SetWindowMinimumSize(window, 800, 400);

    state->time = SDLite_CreateTime(-1);
    if(!state->time){
        free_appstate(state);
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    state->input = SDLite_CreateInput();
    if(!state->input){
        free_appstate(state);
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    srand(time(NULL));
    
    return state;
}




SDL_AppResult SDL_AppInit(void **appstate, int argc, char *argv[]){

    gamestate = GAME_MAIN_MENU;

    if(SDLite_Init(NULL, NULL, true, false)){
        SDL_Log("Error: %s\n", SDL_GetError());
        return SDL_APP_FAILURE;
    }

    Appstate *state = (Appstate*)(*appstate);
    state = init_appstate();
    if(!state){
        SDL_Log("Error: %s\n", SDL_GetError());
        return SDL_APP_FAILURE;
    }



    (*appstate) = state;

    return SDL_APP_CONTINUE;
}
