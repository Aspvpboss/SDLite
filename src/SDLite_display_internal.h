/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/

#ifndef SDLite_DISPLAY_INTERNAL_H
#define SDLite_DISPLAY_INTERNAL_H

#include "SDLite/common_libs.h"

struct SDLite_Display{

    SDL_Window *window;
    SDL_Renderer *renderer;
    TTF_TextEngine *text_engine;

};

#endif