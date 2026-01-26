/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_COMMON_LIBS_H
#define SDK_COMMON_LIBS_H

#ifdef __cplusplus
extern "C"{
#endif

#ifdef _WIN32
    #ifdef DLL_EXPORTS
        #define SDK1_API __declspec(dllexport)
    #elif defined(STATIC_LINK)
        #define SDK1_API
    #else
        #define SDK1_API __declspec(dllimport)
    #endif
#else
    #define SDK1_API
#endif



#include "SDL3_mixer/SDL_mixer.h" 
#include "SDL3/SDL.h"
#include "SDL3_image/SDL_image.h"
#include "SDL3_ttf/SDL_ttf.h"
#include "MemTrack.h"

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>


#ifdef __cplusplus
}
#endif


#endif
