#include "update.h"


void update_fps(SDK_Text *text, SDK_Time *time){

    char fps_string[20];
    snprintf(fps_string, sizeof(fps_string), "FPS: %.2f", time->fps);

    SDK_Text_UpdateString(text, fps_string);

}


int update(Appstate *state){

    if(state->time->fps_updated)
        update_fps(state->fps_text, state->time);

    return 0;
}

