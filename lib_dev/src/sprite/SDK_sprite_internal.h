#ifndef SDK_SPRITE_INTERNAL_H
#define SDK_SPRITE_INTERNAL_H

#include "common_libs.h"
#include "SDK_display.h"
#include "SDK_time.h"
#include "sprite/SDK_sprite_type.h"

struct SDK_Sprite{

    enum SDK_SpriteType sprite_type;
    void *data;

    SDL_FRect render_rect;
    SDL_FlipMode flip_mode;
    double scale;
    double angle;
    SDL_FPoint pivot_point;

};



typedef struct{

    float base_width;
    float base_height;
    SDL_Texture *texture;
    
    SDL_FRect src_rect;

} SDK_StaticSprite_Data;


typedef struct{

    float base_width;
    float base_height;
    SDL_Color color;
    bool is_filled;

} SDK_RectSprite_Data;


typedef struct{

    SDL_FRect *frames;
    uint8_t amount_frames;
    uint8_t current_frame;
    double frame_duration;
    double time_elapsed;
    bool play_animation;
    bool loop_animation;
    bool enable_animation;

} SDK_Animation;

typedef struct{

    float base_width;
    float base_height;
    SDL_Texture *texture;

    SDK_Animation *animation;
    uint16_t amount_animation;
    uint16_t current_animation;

} SDK_AnimatedSprite_Data;




#endif