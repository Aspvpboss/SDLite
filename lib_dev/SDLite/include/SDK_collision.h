/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDLite_COLLISION_H
#define SDLite_COLLISION_H

#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"


enum SDLite_CollisionType{

    SDLite_COLLISION_NONE,
    SDLite_COLLISION_LEFT,
    SDLite_COLLISION_RIGHT,
    SDLite_COLLISION_UP,
    SDLite_COLLISION_DOWN,
    SDLite_COLLISION_ERROR

};


/*
    Checks for a collision between a SDL_FRect and a SDL_FPoint

    returns 0 for no collision, 1 for collision, and -1 for failure
*/
SDLite_DLL int SDLite_Collision_RectPoint(const SDL_FRect *rect, const SDL_FPoint *point);



/*
    Checks for a collision between two SDL_FRects

    returns 0 for no collision, 1 for collision, and -1 for failure
*/
SDLite_DLL int SDLite_Collision_Rect(const SDL_FRect *a, const SDL_FRect *b);

/*
    Checks relative collisions between SDL_Rects 'target' and 'source'

    If target collides with the top of source, the function will return 'SDLite_COLLISION_UP'

    returns enum SDLite_CollisionType for success, returns SDLite_COLLISION_ERROR for failure  
*/
SDLite_DLL enum SDLite_CollisionType SDLite_Collision_RectDir(const SDL_FRect *target, const SDL_FRect *source);


#ifdef __cplusplus
}
#endif


#endif
