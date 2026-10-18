#include "update.h"



void center_text(SDLite_Text *text, int y, int window_width){

    SDL_FRect render_rect = {0};
    SDLite_Text_Get_RenderRect(text, &render_rect);
    SDLite_Text_SetPosition(text, (window_width - render_rect.w) / 2, y);

}


void update_fps(SDLite_Text *text, SDLite_Time *time){

    char fps_string[20];
    snprintf(fps_string, sizeof(fps_string), "FPS: %.1f", SDLite_Time_GetFPS(time));

    SDLite_Text_SetString(text, fps_string);
    
}


void update_multiplier(Gameplay *gameplay, int window_width){

    char multiplier_string[20];
    snprintf(multiplier_string, sizeof(multiplier_string), "x%.1f", gameplay->speed_multiplier.multiplier);
    
    SDLite_Text_SetString(gameplay->speed_multiplier.multiplier_text, multiplier_string);

    center_text(gameplay->speed_multiplier.multiplier_text, GAMEPLAY_HUD_SIZE / 2, window_width); 
}


void update_score(Score *player_score, int new_score, int window_width){

    player_score->score = new_score;

    char score_string[20];
    snprintf(score_string, sizeof(score_string), "%d", player_score->score);
    
    SDLite_Text_SetString(player_score->score_text, score_string);

    if(player_score->text_alignment == TTF_HORIZONTAL_ALIGN_LEFT){

        SDLite_Text_SetPosition(player_score->score_text, 0, 2);

    } else if(player_score->text_alignment == TTF_HORIZONTAL_ALIGN_RIGHT){

        int width;
        TTF_GetStringSize(SDLite_Text_GetTTFFont(player_score->score_text), score_string, 0, &width, NULL);
        SDLite_Text_SetPosition(player_score->score_text, window_width - width, 2);

    }

}


void reset_ball(Pong_Ball *ball, SDL_FRect *ball_rect, SDL_FRect *ball_arena){
    
    int random_y_offset;
    random_y_offset = RANDOM_RANGE(-80, 80);
    ball_rect->x = (ball_arena->x + ball_arena->w) / 2;
    ball_rect->y = (ball_arena->y + ball_arena->h) / 2 + random_y_offset;

    double x_velocity = RANDOM_RANGE(0, 1);
    if(x_velocity == 0) x_velocity = -1;

    double y_velocity = RANDOM_RANGE(0, 1);
    if(y_velocity == 0) y_velocity = -1;

    ball->x_speed = 350.0f;
    ball->y_speed = 350.0f;
    ball->x_velocity = x_velocity;
    ball->y_velocity = y_velocity;

    SDLite_Sprite_Set_Position(ball->sprite, (SDL_FPoint){ball_rect->x, ball_rect->y});

}


void check_ball_collision(Gameplay *gameplay, SDL_FRect *current_position, int window_width){

    SDL_FRect *arena = &gameplay->ball_arena;

    const int ball_x_speed_scaling = 30;
    const int ball_y_speed_scaling = 20;

    SDL_FRect paddle_rect;
    SDLite_Sprite_Get_RenderRect(gameplay->player_one.paddle.sprite, &paddle_rect);
    if(SDLite_Collision_Rect(current_position, &paddle_rect)){
        current_position->x = paddle_rect.x + paddle_rect.w + current_position->w; 
        gameplay->ball.x_velocity *= -1;
        gameplay->ball.x_speed += ball_x_speed_scaling;
        gameplay->ball.y_speed += ball_y_speed_scaling;
    }
    SDLite_Sprite_Get_RenderRect(gameplay->player_two.paddle.sprite, &paddle_rect);
    if(SDLite_Collision_Rect(current_position, &paddle_rect)){
        current_position->x = paddle_rect.x - current_position->w; 
        gameplay->ball.x_velocity *= -1;
        gameplay->ball.x_speed += ball_x_speed_scaling;
        gameplay->ball.y_speed += ball_y_speed_scaling;
    }
    
    if(current_position->x < arena->x){

        update_score(&gameplay->player_two.score, gameplay->player_two.score.score + 1, window_width);
        reset_ball(&gameplay->ball, current_position, arena);

    } else if(current_position->x + current_position->w > arena->x + arena->w){

        update_score(&gameplay->player_one.score, gameplay->player_one.score.score + 1, window_width);
        reset_ball(&gameplay->ball, current_position, arena);

    }


    if(current_position->y < arena->y){

        current_position->y = arena->y;
        gameplay->ball.y_velocity *= -1;

    } else if(current_position->y + current_position->h > arena->y + arena->h){

        current_position->y = arena->y + arena->h - current_position->h;
        gameplay->ball.y_velocity *= -1;

    }

}


void update_ball_position(Gameplay *gameplay, SDLite_Time *time, int window_width){

    SDL_FRect current_position;
    SDLite_Sprite_Get_RenderRect(gameplay->ball.sprite, &current_position);

    double delta_time = SDLite_Time_GetDT(time);
    double speed_multiplier = gameplay->speed_multiplier.multiplier;

    current_position.x += gameplay->ball.x_velocity * gameplay->ball.x_speed * delta_time * speed_multiplier;
    current_position.y += gameplay->ball.y_velocity * gameplay->ball.y_speed * delta_time * speed_multiplier;

    check_ball_collision(gameplay, &current_position, window_width);

    SDLite_Sprite_Set_Position(gameplay->ball.sprite, (SDL_FPoint){current_position.x, current_position.y});

}

void paddle_bounds_check(Gameplay *gameplay, SDL_FRect *paddle_box){

    if(paddle_box->y < gameplay->ball_arena.y){
        paddle_box->y = gameplay->ball_arena.y;
    }
    if(paddle_box->y  + paddle_box->h > gameplay->ball_arena.y + gameplay->ball_arena.h){
        paddle_box->y = gameplay->ball_arena.y + gameplay->ball_arena.h - paddle_box->h;
    }

}

void update_paddles_position(Gameplay *gameplay, SDLite_Time *time){

    Paddle *paddle_one = &gameplay->player_one.paddle;
    Paddle *paddle_two = &gameplay->player_two.paddle;
    double delta_time = SDLite_Time_GetDT(time);
    double speed_multiplier = gameplay->speed_multiplier.multiplier;

    SDL_FRect render_rect = {0};
    SDLite_Sprite_Get_RenderRect(paddle_one->sprite, &render_rect);
    render_rect.y += paddle_one->y_speed * paddle_one->y_velocity * delta_time * speed_multiplier; 
    paddle_bounds_check(gameplay, &render_rect);
    SDLite_Sprite_Set_Position(paddle_one->sprite, (SDL_FPoint){render_rect.x, render_rect.y});

    SDLite_Sprite_Get_RenderRect(paddle_two->sprite, &render_rect);
    render_rect.y += paddle_two->y_speed * paddle_two->y_velocity * delta_time * speed_multiplier; 
    paddle_bounds_check(gameplay, &render_rect);
    SDLite_Sprite_Set_Position(paddle_two->sprite, (SDL_FPoint){render_rect.x, render_rect.y});
    
}


int update(Appstate *state){

    Gameplay *gameplay = state->gameplay;
    SDLite_Time *time = state->time;

    switch(gamestate){
        case GAME_PLAYING:
            SDLite_Time_Set_FPSLimit(state->time, gameplay->display_refresh_rate);
            
            if(SDLite_Time_Is_FPSUpdated(time)){
                update_fps(gameplay->fps_text, time);
                center_text(gameplay->fps_text, 0, state->window_width);
            }

            update_ball_position(gameplay, time, state->window_width);
            update_paddles_position(gameplay, time);
            break;

        case GAME_MAIN_MENU:
            SDLite_Time_Set_FPSLimit(time, 10);
            break;

        case GAME_WIN_SCREEN:
            break;

        default:
            break;
    }

    
    return 0;
}

