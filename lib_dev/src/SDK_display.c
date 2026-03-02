/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDK_display.h"
#include "SDK_display_internal.h"


SDK_Display* SDK_CreateDisplay(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flag){

    if(!window_title) return NULL;

    SDK_Display *display = t_malloc(sizeof(SDK_Display));
    display->window_flag = window_flag;


    display->window = SDL_CreateWindow(window_title, window_width, window_height, window_flag);
    if(!display->window){
        t_free(display);
        return NULL;
    }

    display->renderer = SDL_CreateRenderer(display->window, NULL);
    if(!display->renderer){
        SDL_DestroyWindow(display->window);
        t_free(display);
        return NULL;
    }

    display->text_engine = TTF_CreateRendererTextEngine(display->renderer);
    if(!display->text_engine){
        SDL_DestroyWindow(display->window);
        SDL_DestroyRenderer(display->renderer);
        t_free(display);
        return NULL;
    }

    return display;
}




int SDK_DisplayClear(SDK_Display *display){

    if(!display) return 1;

    if(!SDL_RenderClear(display->renderer)){
        return 1;
    }

    return 0;
}

int SDK_DisplayPresent(SDK_Display *display){

    if(!display) return 1;

    if(!SDL_RenderPresent(display->renderer)){
        return 1;
    }

    return 0;
}


int SDK_Display_IsFullscreen(SDK_Display *display){

    if(!display) return -1;

    display->window_flag = SDL_GetWindowFlags(display->window); 

    if(display->window_flag & SDL_WINDOW_FULLSCREEN) return 1;

    return 0;
}


void SDK_DestroyDisplay(SDK_Display *display){

    if(!display) return;

    SDL_DestroyWindow(display->window);
    display->window = NULL;

    SDL_DestroyRenderer(display->renderer);
    display->renderer = NULL;

    TTF_DestroyRendererTextEngine(display->text_engine);
    display->text_engine = NULL;

    t_free(display);

}



int SDK_DisplaySetWindowed(SDK_Display *display, int width, int height){

    if(!SDL_SetWindowFullscreen(display->window, 0)){
        return 1;
    }

    if(!SDL_SetWindowSize(display->window, width, height)){
        return 1;
    }

    return 0;
}



int SDK_DisplaySetFullscreen(SDK_Display *display){

    if(!SDL_SetWindowFullscreen(display->window, 1)){
        return 1;
    }

    return 0;
}


int SDK_Display_GetSize(SDK_Display *display, int *w, int *h){

    if(!display || !w || !h) return 1;

    if(!SDL_GetWindowSize(display->window, w, h)) return 1;

    return 0;
}

