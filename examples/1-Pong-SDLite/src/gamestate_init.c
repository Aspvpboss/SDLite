#include "gamestate_init.h"



static int init_gui() {

}


Gameplay* init_gameplay(Appstate *state){

    Gameplay *gameplay = t_malloc(sizeof(Gameplay));
    if(!gameplay) return NULL;

    
    int window_width = state->window_width;
    int window_height = state->window_height;

    SDL_DisplayID display_id = SDL_GetPrimaryDisplay();
    const SDL_DisplayMode *display_mode = SDL_GetCurrentDisplayMode(display_id);
    if(!display_mode){
        free_gameplay(gameplay); 
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }
    gameplay->display_refresh_rate = display_mode->refresh_rate;

    gameplay->player_one.score.score_text = NULL;
    gameplay->player_two.score.score_text = NULL;
    gameplay->speed_multiplier.multiplier_text = NULL;
    gameplay->speed_multiplier.multiplier = 1.0f;
    gameplay->horizontal_bar = (SDL_FRect){0, GAMEPLAY_HUD_SIZE, window_width, GAMEPLAY_HORIZONTAL_BAR_HEIGHT};


    gameplay->ball_arena.x = 0;
    gameplay->ball_arena.y = GAMEPLAY_HUD_SIZE + GAMEPLAY_HORIZONTAL_BAR_HEIGHT;
    gameplay->ball_arena.w = window_width;
    gameplay->ball_arena.h = window_height - GAMEPLAY_HUD_SIZE - GAMEPLAY_HORIZONTAL_BAR_HEIGHT;

    gameplay->ball.x_velocity = 1.0f;
    gameplay->ball.y_velocity = 1.0f;  
    gameplay->ball.sprite = NULL;

    gameplay->player_one.score.score = 0;
    gameplay->player_one.score.text_alignment = TTF_HORIZONTAL_ALIGN_LEFT;
    gameplay->player_one.paddle.sprite = NULL;

    gameplay->player_two.score.score = 0;
    gameplay->player_two.score.text_alignment = TTF_HORIZONTAL_ALIGN_RIGHT;
    gameplay->player_two.paddle.sprite = NULL;
   


    const SDL_Color WHITE = {255, 255, 255, 255};
    SDL_FRect player_rect = {0, 0, 10, 80};
    player_rect.x = 0;
    player_rect.y = (gameplay->ball_arena.y + gameplay->ball_arena.h) / 2;
    gameplay->player_one.paddle.sprite = SDLite_Create_RectSprite(player_rect, WHITE, true);
    gameplay->player_one.paddle.y_speed = 400;

    player_rect.x = window_width - player_rect.w;
    gameplay->player_two.paddle.sprite = SDLite_Create_RectSprite(player_rect, WHITE, true);
    gameplay->player_two.paddle.y_speed = 400;

    SDL_FRect ball_position = {0, 0, 10, 10};

    gameplay->ball.sprite = SDLite_Create_RectSprite(ball_position, WHITE, true);
    if(!gameplay->ball.sprite || !gameplay->player_one.paddle.sprite || !gameplay->player_two.paddle.sprite){
        free_gameplay(gameplay); 
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    reset_ball(&gameplay->ball, &ball_position, &gameplay->ball_arena);
    
    gameplay->fps_text = SDLite_CreateText(state->display, "FPS: 0", FONT_PATH, GAMEPLAY_HUD_SIZE / 2, 0, 0, (SDL_Color){255, 255, 255, 255});
    gameplay->speed_multiplier.multiplier_text = SDLite_CreateText(state->display, "x1.0", FONT_PATH, GAMEPLAY_HUD_SIZE / 2, 0, 0, (SDL_Color){255, 255, 255, 255});
    gameplay->player_one.score.score_text = SDLite_CreateText(state->display, NULL, FONT_PATH, GAMEPLAY_HUD_SIZE, 0, 0, (SDL_Color){255, 255, 255, 255});
    gameplay->player_two.score.score_text = SDLite_CreateText(state->display, NULL, FONT_PATH, GAMEPLAY_HUD_SIZE, window_width / 2 - GAMEPLAY_HUD_SIZE, 0, (SDL_Color){255, 255, 255, 255});


    if(!gameplay->player_one.score.score_text || !gameplay->player_two.score.score_text || !gameplay->speed_multiplier.multiplier_text || !gameplay->fps_text){
        free_gameplay(gameplay); 
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    update_score(&gameplay->player_one.score, 0, window_width);
    update_score(&gameplay->player_two.score, 0, window_width); 

    update_multiplier(gameplay, window_width);

    center_text(gameplay->fps_text, 0, window_width);
    center_text(gameplay->speed_multiplier.multiplier_text, GAMEPLAY_HUD_SIZE / 2, window_width);



    return gameplay;
}


Main_Menu* init_main_menu(Appstate *state){

    Main_Menu *main_menu = t_malloc(sizeof(Main_Menu));
    if(!main_menu) return NULL;

    main_menu->title_text = SDLite_CreateText(state->display, "PONG", FONT_PATH, 100, 0, 0, (SDL_Color){255, 255, 255, 255});
    if(!main_menu->title_text){
        free_main_menu(main_menu); 
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    center_text(main_menu->title_text, state->window_height / 2 - 100, state->window_width);

    const char *play_string = "Press Enter to Play";
    main_menu->play_text = SDLite_CreateText(state->display, play_string, FONT_PATH, 50, 0, 0, (SDL_Color){255, 255, 255, 255});
    if(!main_menu->play_text){
        free_main_menu(main_menu); 
        SDL_Log("Error: %s\n", SDL_GetError());
        return NULL;
    }

    center_text(main_menu->play_text, state->window_height / 2 + 20, state->window_width);

    return main_menu;
}



Win_Menu* init_win_menu(Appstate *state){

    Win_Menu *win_menu = t_malloc(sizeof(Win_Menu));
    if(!win_menu) return NULL;
    const char *text_string = NULL;

    if(state->gameplay->player_one.score.score > state->gameplay->player_two.score.score){
        text_string = "Player One Wins!";
    } else{
        text_string = "Player Two Wins!";
    }
    
    const SDL_Color WHITE = {255, 255, 255, 255};

    win_menu->title_text = SDLite_CreateText(state->display, text_string, FONT_PATH, 40, 0, 0, WHITE);
    if(!win_menu->title_text){
        t_free(win_menu);
        return NULL;
    }

    center_text(win_menu->title_text, state->window_height / 4, state->window_width);
    win_menu->seconds_elapsed = 0.0f;
    win_menu->seconds_duration = 3.0f;


    return win_menu;
}