/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/


// some complex stuff here
#include "SDK_version.h"
void SDK_Version_GetNumbers(int *major, int *minor, int *micro){
    if(!major || !minor || !micro) return; 

    *major = SDK_MAJOR_VERSION;
    *minor = SDK_MINOR_VERSION;
    *micro = SDK_MICRO_VERSION;
}
