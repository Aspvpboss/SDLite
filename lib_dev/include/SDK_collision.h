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
    Checks for a collision between two SDL_FRects

    returns 0 for no collision, 1 for collision, and -1 for failure
*/
SDK1_API int SDK_RectCollision(const SDL_FRect *a, const SDL_FRect *b);

/*
    Check collisions between render_rects of sprite_src relatively to sprite_dest

    returns enum SDK_CollisionType, returns SDK_COLLISION_ERROR for failure  
*/
SDK1_API enum SDK_CollisionType SDK_RectCollision_Dir(const SDL_FRect *source, const SDL_FRect *target);


#ifdef __cplusplus
}
#endif


#endif
