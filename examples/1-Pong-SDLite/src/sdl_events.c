#include "sdl_events.h"
#include "update.h"

SDL_AppResult SDL_AppEvent(void *appstate, SDL_Event *event){

    Appstate *state = (Appstate*)(appstate);

    if(event->type == SDL_EVENT_QUIT)
        return SDL_APP_SUCCESS;

    if(event->type == SDL_EVENT_WINDOW_RESIZED){

        state->window_width = event->window.data1;
        state->window_height = event->window.data2;
        int window_width = state->window_width;
        int window_height = state->window_height;

        switch(gamestate){
            case GAME_PLAYING:
                Gameplay *gameplay = state->gameplay;

                gameplay->ball_arena.w = window_width;
                gameplay->ball_arena.h = window_height - GAMEPLAY_HUD_SIZE - GAMEPLAY_HORIZONTAL_BAR_HEIGHT;

                update_fps(gameplay->fps_text, state->time);
                center_text(gameplay->fps_text, 0, window_width);
                update_multiplier(gameplay, window_width); 
                update_score(&gameplay->player_one.score, gameplay->player_one.score.score, window_width);
                update_score(&gameplay->player_two.score, gameplay->player_two.score.score, window_width);
                gameplay->horizontal_bar.w = window_width;
                break;

            case GAME_MAIN_MENU:
                Main_Menu *main_menu = state->main_menu;
                center_text(main_menu->title_text, state->window_height / 2 - 100, state->window_width);
                center_text(main_menu->play_text, state->window_height / 2 + 20, state->window_width);
                break;

            case GAME_WIN_SCREEN:
                break;

            default:
                break;
        }

    }

    return SDL_APP_CONTINUE;
}