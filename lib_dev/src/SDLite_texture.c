#include "SDLite_texture.h"
#include "SDLite_texture_internal.h"
#include "SDLite_display_internal.h"


SDLite_Texture* SDLite_CreateTexture(const SDLite_Display *display, const char *file){

    if(!display || !file) return NULL;

    SDLite_Texture *sdlite_texture = t_malloc(sizeof(SDLite_Texture));
    if(!sdlite_texture) return NULL;

    sdlite_texture->texture = IMG_LoadTexture(display->renderer, file);
    if(!sdlite_texture->texture){
        t_free(sdlite_texture);
        return NULL;
    }

    sdlite_texture->refs = 1;
    
    return sdlite_texture;
}

int SDLite_Texture_GetRefs(const SDLite_Texture *texture){

    if(!texture) return -1;
    
    return texture->refs;
}


void SDLite_DestroyTexture(SDLite_Texture *texture){

    if(!texture) return;

    texture->refs--;
    if(texture->refs > 0) return;

    SDL_DestroyTexture(texture->texture);
    t_free(texture);

}
