#include "quit.h"

void free_gameplay(Gameplay *gameplay){

    if(!gameplay)
        return;

    SDLite_DestroyText(gameplay->fps_text);
    SDLite_DestroyText(gameplay->player_one.score.score_text);
    SDLite_DestroyText(gameplay->player_two.score.score_text);
    SDLite_DestroyText(gameplay->speed_multiplier.multiplier_text);
    SDLite_DestroySprite(gameplay->ball.sprite);
    SDLite_DestroySprite(gameplay->player_one.paddle.sprite);
    SDLite_DestroySprite(gameplay->player_two.paddle.sprite);
    t_free(gameplay);

}



void free_appstate(Appstate *state){

    SDLite_DestroyDisplay(state->display);
    SDLite_DestroyInput(state->input);
    SDLite_DestroyTime(state->time);
    t_free(state);
    
}

void free_main_menu(Main_Menu *main_menu){

    if(!main_menu)
        return;

    SDLite_DestroyText(main_menu->title_text);
    SDLite_DestroyText(main_menu->play_text);
    t_free(main_menu);

}


void free_win_menu(Win_Menu *win_menu){

    if(!win_menu) return;

    SDLite_DestroyText(win_menu->title_text);
    t_free(win_menu);

}


void SDL_AppQuit(void *appstate, SDL_AppResult result){

    Appstate *state = (Appstate*)(appstate);

    if(!state){
        SDLite_Quit();
        return;
    }

    free_gameplay(state->gameplay);
    free_main_menu(state->main_menu);
    free_win_menu(state->win_menu);
    free_appstate(state);


    SDLite_Quit();

}