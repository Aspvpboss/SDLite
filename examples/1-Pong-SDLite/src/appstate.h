#ifndef APPSTATE_PONG_H
#define APPSTATE_PONG_H

#include <SDLite/SDLite.h>
#include <math.h>
#include "menus.h"
#include "gameplay.h"


#define WINDOW_START_WIDTH 1000
#define WINDOW_START_HEIGHT 800
#define FONT_PATH "assets/default.ttf"
#define RANDOM_RANGE(min, max) (rand() % ((max) - (min) + 1) + (min))

typedef enum{

    GAME_PLAYING,
    GAME_MAIN_MENU,
    GAME_WIN_SCREEN
    
} Gamestate;

extern Gamestate gamestate;


typedef struct{

    int winning_score;
    int window_width, window_height;
    SDLite_Display *display;
    SDLite_Time *time;
    SDLite_Input *input;

    Gameplay *gameplay;
    Main_Menu *main_menu;
    Win_Menu *win_menu;

} Appstate;


#endif