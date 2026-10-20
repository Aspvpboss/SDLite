#include "update.h"


void update_fps(SDLite_Text *text, SDLite_Time *time){

    char fps_string[20];
    snprintf(fps_string, sizeof(fps_string), "FPS: %.2f", SDLite_Time_GetFPS(time));

    SDLite_Text_SetString(text, fps_string);

}


int update(Appstate *state){

    if(SDLite_Time_Is_FPSUpdated(state->time))
        update_fps(state->fps_text, state->time);

    return 0;
}

