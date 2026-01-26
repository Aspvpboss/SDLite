#include "frame_events.h"


int frame_events(Appstate *state){

    if(SDK_Keyboard_Pressed(state->input, SDL_SCANCODE_ESCAPE)) return 1;

    return 0;
}