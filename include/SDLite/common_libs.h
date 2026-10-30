/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/

#ifndef SDLite_COMMON_LIBS_H
#define SDLite_COMMON_LIBS_H

#ifdef __cplusplus
extern "C"{
#endif

#ifdef _WIN32
    #ifdef DLL_EXPORTS
        #define SDLite_API __declspec(dllexport)
    #elif defined(STATIC_LINK)
        #define SDLite_API
    #else
        #define SDLite_API __declspec(dllimport)
    #endif
#else
    #define SDLite_API __attribute__((visibility("default")))
#endif


#include <SDL3_mixer/SDL_mixer.h>
#include <SDL3/SDL.h>
#include <SDL3_image/SDL_image.h>
#include <SDL3_ttf/SDL_ttf.h>
#include "SDLite/memtrack.h"
#include "SDLite/SDLite_error.h"

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>


#ifdef __cplusplus
}
#endif


#endif
