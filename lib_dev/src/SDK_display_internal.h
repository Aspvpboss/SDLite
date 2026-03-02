#ifndef SDK_DISPLAY_INTERNAL_H
#define SDK_DISPLAY_INTERNAL_H

#include "common_libs.h"

struct SDK_Display{

    SDL_Window *window;
    SDL_WindowFlags window_flag;
    SDL_Renderer *renderer;
    TTF_TextEngine *text_engine;

};

#endif