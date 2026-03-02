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

*/
typedef struct SDK_Time SDK_Time;


/*
    Creates and returns a SDK_Time struct

    set the fps_limit to be less than 0.0f to uncap the fps
    fps_limit can be changed during runtime
    if fps is above several 1000s, it will become unstable and break animation timing

    Will fail if fps_limit == 0.0f or if malloc fails

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
    Gets the fps of the SDK_Time*

    Will fail if SDK_Time* is NULL

    returns the fps for success, returns -1.0f for failure
*/
SDK1_API double SDK_Time_GetFPS(const SDK_Time *time);

/*
    Gets the delta time of the SDK_Time*

    Will fail if SDK_Time* is NULL

    returns the delta time for success, returns -1.0f for failure
*/
SDK1_API double SDK_Time_GetDT(const SDK_Time *time);


/*
    Returns either true or false if the fps value inside SDK_Time* updated

    Will fail if SDK_Time* is NULL

    returns a bool of the fps updated for success, returns false for failure
*/
SDK1_API bool SDK_Time_FPS_Update(const SDK_Time *time);


/*
    Gets the fps_limit of the SDK_Time*

    Will fail if SDK_Time* is NULL

    returns the fps_limit for success, returns 0.0f for failure
*/
SDK1_API double SDK_Time_Get_FPSLimit(const SDK_Time *time);

/*
    Sets the fps_limit of the SDK_Time*

    Set the fps_limit below 0.0f to uncap the fps
    if fps is above several 1000s, it will become unstable and break animation timing
    
    Will fail if SDK_Time* is NULL or if new_fps_limit == 0.0f

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_Time_Set_FPSLimit(SDK_Time *time, double new_fps_limit);


/*
    Calls the time.h functions in order of use

    This is for ease of programmers.

    You can call the individual functions seperately
    **
    **
    Functions Called:
    
    SDK_CalculateDT(time);
    SDK_LimitFPS(time);
    SDK_CalculateFPS(time);  

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
