/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDK_init.h"

static MemTrack_Context ctx;

int SDK_Init(void (*func)(void*), void *func_data, bool memory_failure_abort, bool print_memtrack_info, bool auto_null_pointers){

    if(!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO)){
        return 1;
    }

    if(!TTF_Init()){
        return 1;
    }

    if(!MIX_Init()){
        return 1;
    }

    Set_MemTrack_Context(&ctx);
    Set_Malloc_Error_Function(func, func_data);

    ctx.config.memory_failure_abort = memory_failure_abort;
    ctx.config.print_error_info = print_memtrack_info;
    ctx.config.auto_null_pointers = auto_null_pointers;

    return 0;
}


void SDK_Quit(){

    TTF_Quit();
    MIX_Quit();
    SDL_QuitSubSystem(SDL_INIT_VIDEO);
    SDL_QuitSubSystem(SDL_INIT_AUDIO);
    SDL_Quit();

    if(check_memory_leak())
        print_tracking_info();

    free_tracking_info();

}
