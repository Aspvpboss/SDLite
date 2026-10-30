/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/

#include "SDLite/SDLite_texture.h"
#include "SDLite_texture_internal.h"
#include "SDLite_display_internal.h"


SDLite_Texture* SDLite_CreateTexture(const SDLite_Display *display, const char *file){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }
    if(!file){
        SDLite_SetError("File path cannot be NULL");
        return NULL;
    }

    SDLite_Texture *sdlite_texture = t_calloc(1, sizeof(SDLite_Texture));
    if(!sdlite_texture){
        SDLite_SetError("Failed to allocate texture");
        return NULL;
    }

    sdlite_texture->texture = IMG_LoadTexture(display->renderer, file);
    if(!sdlite_texture->texture){
        SDLite_SetError("IMG_LoadTexture failed: %s", SDL_GetError());
        t_free(sdlite_texture);
        return NULL;
    }

    sdlite_texture->refs = 1;
    
    return sdlite_texture;
}


SDL_Texture* SDLite_Texture_GetSDLTexture(const SDLite_Texture *texture){

    if(!texture){
        SDLite_SetError("Texture is NULL");
        return NULL;
    }

    return texture->texture;
}


uint64_t SDLite_Texture_GetRefs(const SDLite_Texture *texture){

    if(!texture){
        SDLite_SetError("Texture is NULL");
        return 0;
    }
    
    return texture->refs;
}


void SDLite_DestroyTexture(SDLite_Texture **texture){

    if(!texture || !(*texture)) return;

    if((*texture)->refs > 0){
        (*texture)->refs--;
    }
    if((*texture)->refs == 0){
        SDL_DestroyTexture((*texture)->texture);
        t_free((*texture));
        *texture = NULL;
    }

}
