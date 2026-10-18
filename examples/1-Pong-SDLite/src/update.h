#pragma once

#include "appstate.h"

int update(Appstate *state);


void center_text(SDLite_Text *text, int y, int window_width);
void update_score(Score *player_score, int new_score, int window_width);
void update_multiplier(Gameplay *gameplay, int window_width);
void update_fps(SDLite_Text *text, SDLite_Time *time);
void reset_ball(Pong_Ball *ball, SDL_FRect *ball_rect, SDL_FRect *ball_arena);



