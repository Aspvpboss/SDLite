#include "SDK_collision.h"




enum SDK_CollisionType SDK_Sprite_RectCollision(const SDL_FRect *source, const SDL_FRect *target){

    if (!source || !target)
        return SDK_COLLISION_NONE;

    if (source->x + source->w < target->x) return SDK_COLLISION_NONE;
    if (source->x > target->x + target->w) return SDK_COLLISION_NONE;
    if (source->y + source->h < target->y) return SDK_COLLISION_NONE;
    if (source->y > target->y + target->h) return SDK_COLLISION_NONE;

    float left_overlap  = (source->x + source->w) - target->x;
    float right_overlap = (target->x + target->w) - source->x;
    float up_overlap    = (source->y + source->h) - target->y;
    float down_overlap  = (target->y + target->h) - source->y;

    float min_overlap = left_overlap;
    enum SDK_CollisionType side = SDK_COLLISION_LEFT;

    if(right_overlap < min_overlap){
        min_overlap = right_overlap;
        side = SDK_COLLISION_RIGHT;
    }
    if(up_overlap < min_overlap){
        min_overlap = up_overlap;
        side = SDK_COLLISION_UP;
    }
    if(down_overlap < min_overlap){
        min_overlap = down_overlap;
        side = SDK_COLLISION_DOWN;
    }

    return side;
}

