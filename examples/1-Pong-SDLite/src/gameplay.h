#ifndef GAMEPLAY_H
#define GAMEPLAY_H

#include <SDLite/SDLite.h>

#define GAMEPLAY_HUD_SIZE 40
#define GAMEPLAY_HORIZONTAL_BAR_HEIGHT 5


typedef struct{

    SDLite_Text *score_text; 
    int score;
    TTF_HorizontalAlignment text_alignment;
    
} Score;

typedef struct{

    SDLite_Sprite *sprite;
    double y_velocity;
    double y_speed;

} Paddle;


typedef struct{

    Score score;
    Paddle paddle; 

} Player;


typedef struct{

    SDLite_Text *multiplier_text;
    float multiplier;

} Speed_Multiplier;

typedef struct{

    SDLite_Sprite *sprite;
    double x_velocity;
    double y_velocity;
    double x_speed;
    double y_speed;

} Pong_Ball;


typedef struct{

    Player player_one;
    Player player_two;

    SDL_FRect horizontal_bar;
    SDLite_Text *fps_text;
    Speed_Multiplier speed_multiplier;
    
    SDL_FRect ball_arena;
    Pong_Ball ball;
    float display_refresh_rate; 

} Gameplay;


#endif