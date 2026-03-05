#ifndef SDLITE_TEXTURE_H
#define SDLITE_TEXTURE_H

#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"
#include "SDLite_display.h"

typedef struct SDLite_Texture SDLite_Texture;

/*
    Creates SDLite_Texture using the file given
    View SDL_Image documentation on IMG_LoadTexture() to see supported image formats

    Will fail if either SDLite_Display* or const char* is NULL,
    or if the file fails to load

    returns SDLite_Texture* on success, returns NULL on failure
    call SDL_GetError() for more info
*/
SDLite_DLL SDLite_Texture* SDLite_CreateTexture(SDLite_Display *display, const char *file);

/*
    Reference counting is handled internally by SDLite

    Only call this function when the texture is no longer needed
*/
SDLite_DLL void SDLite_DestroyTexture(SDLite_Texture *texture);

#ifdef __cplusplus
}
#endif

#endif