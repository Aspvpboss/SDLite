/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/


// some complex stuff here
#include "SDLite/SDLite_version.h"
void SDLite_Get_Version(int *major, int *minor, int *micro){
    if(!major || !minor || !micro){
        SDLite_SetError("Invalid argument in SDLite_Get_Version");
        return; 
    } 

    *major = SDLITE_MAJOR_VERSION;
    *minor = SDLITE_MINOR_VERSION;
    *micro = SDLITE_MICRO_VERSION;
}
