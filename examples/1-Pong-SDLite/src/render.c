#include "render.h"


int render(Appstate *state){

    SDLite_Display *display = state->display;
    SDL_Renderer *renderer = SDLite_Display_GetSDLRenderer(display);
    SDL_Window *window = SDLite_Display_GetSDLWindow(display);

    SDLite_DisplayClear(display);

    switch(gamestate){

        case GAME_PLAYING:
            Gameplay *gameplay = state->gameplay;

            SDL_SetWindowResizable(window, false);

            SDLite_Render_Text(gameplay->fps_text);
            SDLite_Render_Text(gameplay->player_one.score.score_text);
            SDLite_Render_Text(gameplay->player_two.score.score_text);
            SDLite_Render_Text(gameplay->speed_multiplier.multiplier_text);
            SDLite_Render_Sprite(display, gameplay->ball.sprite);
            SDLite_Render_Sprite(display, gameplay->player_one.paddle.sprite);
            SDLite_Render_Sprite(display, gameplay->player_two.paddle.sprite);

            SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);   
            
            SDL_RenderFillRect(renderer, &gameplay->horizontal_bar);
            break;

        case GAME_MAIN_MENU:
            Main_Menu *main_menu = state->main_menu;

            SDL_SetWindowResizable(window, true);

            SDLite_Render_Text(main_menu->title_text);
            SDLite_Render_Text(main_menu->play_text);
            break;

        case GAME_WIN_SCREEN:
            Win_Menu *win_menu = state->win_menu;
            SDLite_Render_Text(win_menu->title_text);
            break;

        default:
            break;

    }

    SDLite_DisplayPresent(display);
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 0);

    return 0;
}
