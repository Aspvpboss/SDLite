#ifndef SDLITE_TEXTURE_INTERNAL_H
#define SDLITE_TEXTURE_INTERNAL_H

#include "common_libs.h"

struct SDLite_Texture{

    SDL_Texture *texture;
    uint64_t refs;

};

#endif