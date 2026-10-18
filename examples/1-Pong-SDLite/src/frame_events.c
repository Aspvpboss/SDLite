#include "frame_events.h"
#include "update.h"

void handle_speed_multiplier(Gameplay *gameplay, SDLite_Input *input, int window_width){

    if(SDLite_Input_KeyJustPressed(input, SDL_SCANCODE_LEFT)){

        gameplay->speed_multiplier.multiplier -= 0.5f;
        gameplay->speed_multiplier.multiplier = gameplay->speed_multiplier.multiplier < 0.5f ? 0.5f : gameplay->speed_multiplier.multiplier;
        update_multiplier(gameplay, window_width);
        
    } else if(SDLite_Input_KeyJustPressed(input, SDL_SCANCODE_RIGHT)){
    
        gameplay->speed_multiplier.multiplier += 0.5f;
        gameplay->speed_multiplier.multiplier = gameplay->speed_multiplier.multiplier > 5.0f ? 5.0f : gameplay->speed_multiplier.multiplier;
        update_multiplier(gameplay, window_width);
        
    }
}



void handle_player_paddle(SDLite_Input *input, Paddle *paddle, SDL_Scancode up, SDL_Scancode down){

    paddle->y_velocity = 0.0f;

    if(SDLite_Input_KeyPressed(input, up)){
        paddle->y_velocity = -1;
    }
    if(SDLite_Input_KeyPressed(input, down)){
        paddle->y_velocity = 1;
    }

}


int check_player_scores(Appstate *state){

    if(state->gameplay->player_one.score.score >= state->winning_score){
        return 1;
    }
    if(state->gameplay->player_two.score.score >= state->winning_score){
        return 1;
    }

    return 0;
}



int frame_events(Appstate *state){

    SDLite_Input *input = state->input;

    if(SDLite_Input_KeyPressed(input, SDL_SCANCODE_ESCAPE)) return 1;

    if(SDLite_Input_KeyJustPressed(input, SDL_SCANCODE_M)){
        
        const char *gamestate_str = NULL;
        if(gamestate == GAME_PLAYING) gamestate_str = "GAME_PLAYING";
        if(gamestate == GAME_MAIN_MENU) gamestate_str = "GAME_MAIN_MENU";
        if(gamestate == GAME_WIN_SCREEN) gamestate_str = "GAME_WIN_SCREEN";
       
        SDL_Log("Debug Info:\n");
        SDL_Log("Total heap usage: %lld bytes\n", MemTrack_Memory_Usage());
        SDL_Log("Gamestate %s", gamestate_str);
    }
    
    switch(gamestate){
        case GAME_PLAYING:
            handle_speed_multiplier(state->gameplay, input, state->window_width);
            handle_player_paddle(input, &state->gameplay->player_one.paddle, SDL_SCANCODE_W, SDL_SCANCODE_S);
            handle_player_paddle(input, &state->gameplay->player_two.paddle, SDL_SCANCODE_UP, SDL_SCANCODE_DOWN);
            if(SDLite_Input_KeyJustPressed(input, SDL_SCANCODE_Q)){
                gamestate = GAME_MAIN_MENU;        
                return -1;
            }
            if(check_player_scores(state)){
                gamestate = GAME_WIN_SCREEN;
                return -1;
            }

            break;

        case GAME_MAIN_MENU:
            if(SDLite_Input_KeyJustPressed(input, SDL_SCANCODE_RETURN)){
                gamestate = GAME_PLAYING;
                return -1;
            }
            break;

        case GAME_WIN_SCREEN:
            Win_Menu *win_menu = state->win_menu;
            win_menu->seconds_elapsed += SDLite_Time_GetDT(state->time);
            if(win_menu->seconds_elapsed > win_menu->seconds_duration){
                gamestate = GAME_MAIN_MENU;
                return -1;
            }
            break;

        default:
            break;
    }

    return 0;
}