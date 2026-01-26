/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_VERSION_H
#define SDK_VERSION_H

#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"

#define SDK_MAJOR_VERSION 1
#define SDK_MINOR_VERSION 1
#define SDK_MICRO_VERSION 1

/* 
    takes in int* and writes the version numbers to those pointers

    returns early if any pointer is NULL
*/
SDK1_API void SDK_Version_GetNumbers(int *major, int *minor, int *micro);

#ifdef __cplusplus
}
#endif

#endif
