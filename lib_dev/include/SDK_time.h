/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_TIME_H
#define SDK_TIME_H


#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"


/*

    SDK_Time holds variable that are used for time calculations

    You use dt and fps for functions
    fps_updated becomes true whenever the new fps gets calculated
    becomes false after the update

*/
typedef struct{

    const double dt;
    const bool fps_updated;
    const double fps;
    double fps_limit;
    void *const data;

} SDK_Time;



/*
    Creates and returns a SDK_Time struct

    fps_limit can be changed during runtime

    returns SDK_Time* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Time* SDK_CreateTime(double fps_limit);

/*
    Frees a SDK_Time

    Will return early if SDK_Time is NULL
*/
SDK1_API void SDK_DestroyTime(SDK_Time *time);

/*
    Calls the time.h functions in order of use

    This is for ease of programmers.

    You can call the individual functions seperately
    **
    **
    Functions Called:
    
    SDK_CalculateDT(&time);
    SDK_LimitFPS(&time);
    SDK_CalculateFPS(&time);  

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_TimeFunctions(SDK_Time *time);

/*
    Updates 'dt' within SDK_Time with current delta time

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_CalculateDT(SDK_Time *time);

/*
    Updates 'fps' within SDK_Time with current fps

    This functions uses dt_buffer to average the delta time
    over a defined amount of frame for a smoother fps.
    The amounts of frames it averages is SDK_FPS_POLL_RATE

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_CalculateFPS(SDK_Time *time);

/*
    This function limits the fps of the application. 

    It uses 'int fps_limit' within SDK_Time as the fps limit.

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_LimitFPS(SDK_Time *time);

#ifdef __cplusplus
}
#endif


#endif
