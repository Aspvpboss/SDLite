#include "iterate.h"
#include "render.h"
#include "update.h"
#include "frame_events.h"
#include "gamestate_init.h"
#include "quit.h"


SDL_AppResult SDL_AppIterate(void *appstate){

    Appstate *state = (Appstate*)(appstate);

    switch(gamestate){

        case GAME_PLAYING:
            if(!state->gameplay){
                state->gameplay = init_gameplay(state);
                if(!state->gameplay)
                    return SDL_APP_FAILURE;
            }
            if(state->win_menu){
                free_win_menu(state->win_menu);
                state->win_menu = NULL;
            }
            if(state->main_menu){
                free_main_menu(state->main_menu);
                state->main_menu = NULL; 
            }
            
            break;

        case GAME_MAIN_MENU:
            if(!state->main_menu){
                state->main_menu = init_main_menu(state);
                if(!state->main_menu)
                    return SDL_APP_FAILURE;
            }
            if(state->win_menu){
                free_win_menu(state->win_menu);
                state->win_menu = NULL;
            }
            if(state->gameplay){
                free_gameplay(state->gameplay);
                state->gameplay = NULL; 
            }
            break;

        case GAME_WIN_SCREEN:
            if(!state->win_menu){
                state->win_menu = init_win_menu(state);
                if(!state->win_menu)
                    return SDL_APP_FAILURE;
            }
            if(state->main_menu){
                free_main_menu(state->main_menu);
                state->main_menu = NULL; 
            }
            if(state->gameplay){
                free_gameplay(state->gameplay);
                state->gameplay = NULL; 
            }
            
            break;

        default:
            break;

    }

    int result = 0;
   
    result = frame_events(state);
    if(result == 1) return SDL_APP_SUCCESS;   
    if(result == -1) return SDL_APP_CONTINUE;

    result = update(state);
    if(result == 1) return SDL_APP_FAILURE; 
    if(result == -1) return SDL_APP_CONTINUE;

    result = render(state);
    if(result == 1) return SDL_APP_FAILURE;
    if(result == -1) return SDL_APP_CONTINUE;


    SDLite_Input_UpdateAllPrev(state->input);
    SDLite_TimeFunctions(state->time);

    return SDL_APP_CONTINUE;
}