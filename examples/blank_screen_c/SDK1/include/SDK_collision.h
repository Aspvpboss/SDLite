/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_COLLISION_H
#define SDK_COLLISION_H

#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"


enum SDK_CollisionType{

    SDK_COLLISION_NONE,
    SDK_COLLISION_LEFT,
    SDK_COLLISION_RIGHT,
    SDK_COLLISION_UP,
    SDK_COLLISION_DOWN,
    SDK_COLLISION_ERROR

};


/*
    Checks for a collision between a SDL_FRect and a SDL_FPoint

    returns 0 for no collision, 1 for collision, and -1 for failure
*/
SDK1_API int SDK_Collision_RectPoint(const SDL_FRect *rect, const SDL_FPoint *point);



/*
    Checks for a collision between two SDL_FRects

    returns 0 for no collision, 1 for collision, and -1 for failure
*/
SDK1_API int SDK_Collision_Rect(const SDL_FRect *a, const SDL_FRect *b);

/*
    Checks relative collisions between SDL_Rects 'target' and 'source'

    If target collides with the top of source, the function will return 'SDK_COLLISION_UP'

    returns enum SDK_CollisionType for success, returns SDK_COLLISION_ERROR for failure  
*/
SDK1_API enum SDK_CollisionType SDK_Collision_RectDir(const SDL_FRect *target, const SDL_FRect *source);


#ifdef __cplusplus
}
#endif


#endif
