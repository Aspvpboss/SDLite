/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/

#ifndef SDLite_SDLite_H
#define SDLite_SDLite_H

#ifdef __cplusplus
extern "C"{
#endif


/*
    This is an umbrella header

    includes this imports the entire SDLite framework

    You can individually import parts of the frameworks
*/


#include "SDLite/SDLite_display.h"
#include "SDLite/SDLite_input.h"
#include "SDLite/SDLite_text.h"
#include "SDLite/SDLite_time.h"
#include "SDLite/SDLite_init.h"
#include "SDLite/SDLite_collision.h"
#include "SDLite/SDLite_audio.h"
#include "SDLite/SDLite_version.h"
#include "SDLite/SDLite_texture.h"
#include "SDLite/SDLite_error.h"

#include "SDLite/sprite/SDLite_sprite.h"
#include "SDLite/sprite/SDLite_sprite_manager.h"


#ifdef __cplusplus
}
#endif

#endif
