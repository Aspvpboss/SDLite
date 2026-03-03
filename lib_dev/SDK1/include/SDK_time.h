/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDLite_TIME_H
#define SDLite_TIME_H


#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"


/*

    SDLite_Time holds variable that are used for time calculations

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

} SDLite_Time;



/*
    Creates and returns a SDLite_Time struct

    fps_limit can be changed during runtime

    returns SDLite_Time* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDLite_DLL SDLite_Time* SDLite_CreateTime(double fps_limit);

/*
    Frees a SDLite_Time

    Will return early if SDLite_Time is NULL
*/
SDLite_DLL void SDLite_DestroyTime(SDLite_Time *time);

/*
    Calls the time.h functions in order of use

    This is for ease of programmers.

    You can call the individual functions seperately
    **
    **
    Functions Called:
    
    SDLite_CalculateDT(&time);
    SDLite_LimitFPS(&time);
    SDLite_CalculateFPS(&time);  

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_TimeFunctions(SDLite_Time *time);

/*
    Updates 'dt' within SDLite_Time with current delta time

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_CalculateDT(SDLite_Time *time);

/*
    Updates 'fps' within SDLite_Time with current fps

    This functions uses dt_buffer to average the delta time
    over a defined amount of frame for a smoother fps.
    The amounts of frames it averages is SDLite_FPS_POLL_RATE

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_CalculateFPS(SDLite_Time *time);

/*
    This function limits the fps of the application. 

    It uses 'int fps_limit' within SDLite_Time as the fps limit.

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDLite_DLL int SDLite_LimitFPS(SDLite_Time *time);

#ifdef __cplusplus
}
#endif


#endif
