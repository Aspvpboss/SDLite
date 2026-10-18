#include "quit.h"





void SDL_AppQuit(void *appstate, SDL_AppResult result){

    Appstate *state = (Appstate*)(appstate);

    if(!state)
        return;  

    SDLite_DestroyDisplay(state->display);
    SDLite_DestroyInput(state->input);
    SDLite_DestroyTime(state->time);
    SDLite_DestroyText(state->fps_text);

    t_free(state);

    SDLite_Quit();

}