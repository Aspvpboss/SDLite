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

};



/*
    Check collisions between render_rects of sprite_src relatively to sprite_dest

    returns enum SDK_CollisionType, look in SDK_sprite.h for enum names
*/
SDK1_API enum SDK_CollisionType SDK_CheckCollision(SDK_Sprite *sprite_src, SDK_Sprite *sprite_dest);


#ifdef __cplusplus
}
#endif


#endif
