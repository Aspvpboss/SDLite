/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDLite/SDLite_init.h"
#include "SDLite_error_internal.h"

static bool init = false;

int SDLite_Init(void (*malloc_err_handler)(void*), void *func_data, bool abort_if_mem_error, bool auto_null_pointers){

    if(init){
        SDLite_SetError("SDLite is already initialized");
        return 1;
    }

    if(SDLite_Init_Error_Logger()){
        return 1;
    }

    if(!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO)){
        SDLite_SetError("SDL_Init failed: %s", SDL_GetError());
        return 1;
    }

    if(!TTF_Init()){
        SDLite_SetError("TTF_Init failed: %s", SDL_GetError());
        SDL_QuitSubSystem(SDL_INIT_VIDEO);
        SDL_QuitSubSystem(SDL_INIT_AUDIO);
        SDL_Quit();
        return 1;
    }

    if(!MIX_Init()){
        SDLite_SetError("MIX_Init failed: %s", SDL_GetError());
        SDL_QuitSubSystem(SDL_INIT_VIDEO);
        SDL_QuitSubSystem(SDL_INIT_AUDIO);
        TTF_Quit();
        SDL_Quit();
        return 1;
    }


    if(MemTrack_Init(malloc_err_handler, func_data, auto_null_pointers, abort_if_mem_error)){
        SDLite_SetError("MemTrack_Init failed");
        SDL_QuitSubSystem(SDL_INIT_VIDEO);
        SDL_QuitSubSystem(SDL_INIT_AUDIO);
        TTF_Quit();
        MIX_Quit();
        SDL_Quit();
        return 1;
    }

    init = true;

    return 0;
}


void SDLite_Quit(void){

    if(!init){
        SDLite_Destroy_Error_Logger();
        return;
    }

    SDLite_Destroy_Error_Logger();
    TTF_Quit();
    MIX_Quit();
    SDL_QuitSubSystem(SDL_INIT_VIDEO);
    SDL_QuitSubSystem(SDL_INIT_AUDIO);
    SDL_Quit();

    if(MemTrack_Is_Memory_Leak())
        MemTrack_Tracking_Info();

    MemTrack_Quit();

    init = false;
}
