#include "quit.h"





void SDL_AppQuit(void *appstate, SDL_AppResult result){

    Appstate *state = (Appstate*)(appstate);

    if(!state)
        return;  

    SDK_DestroyDisplay(state->display);
    SDK_DestroyInput(state->input);
    SDK_DestroyTime(state->time);
    SDK_DestroyText(state->fps_text);

    t_free(state);

    SDK_Quit();

}