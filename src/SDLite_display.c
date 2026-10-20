/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDLite/SDLite_display.h"
#include "SDLite_display_internal.h"


SDLite_Display* SDLite_CreateDisplay(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flag){

    if(!window_title){
        SDLite_SetError("Window title cannot be NULL");
        return NULL;
    }

    SDLite_Display *display = t_calloc(1, sizeof(SDLite_Display));
    if(!display){
        SDLite_SetError("Failed to allocate display");
        return NULL;
    }

    display->window = SDL_CreateWindow(window_title, window_width, window_height, window_flag);
    if(!display->window){
        SDLite_SetError("SDL_CreateWindow failed: %s", SDL_GetError());
        t_free(display);
        return NULL;
    }

    display->renderer = SDL_CreateRenderer(display->window, NULL);
    if(!display->renderer){
        SDLite_SetError("SDL_CreateRenderer failed: %s", SDL_GetError());
        SDL_DestroyWindow(display->window);
        t_free(display);
        return NULL;
    }

    display->text_engine = TTF_CreateRendererTextEngine(display->renderer);
    if(!display->text_engine){
        SDLite_SetError("TTF_CreateRendererTextEngine failed: %s", SDL_GetError());
        SDL_DestroyRenderer(display->renderer);
        SDL_DestroyWindow(display->window);
        t_free(display);
        return NULL;
    }

    return display;
}


int SDLite_DisplayClear(SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 1;
    }

    if(!SDL_RenderClear(display->renderer)){
        SDLite_SetError("SDL_RenderClear failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


int SDLite_DisplayPresent(SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 1;
    }

    if(!SDL_RenderPresent(display->renderer)){
        SDLite_SetError("SDL_RenderPresent failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


void SDLite_DestroyDisplay(SDLite_Display *display){

    if(!display) return;
    
    TTF_DestroyRendererTextEngine(display->text_engine);
    display->text_engine = NULL;
    
    SDL_DestroyRenderer(display->renderer);
    display->renderer = NULL;

    SDL_DestroyWindow(display->window);
    display->window = NULL;


    t_free(display);
}


int SDLite_DisplaySetWindowed(SDLite_Display *display, int width, int height){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 1;
    }

    if(!SDL_SetWindowFullscreen(display->window, 0)){
        SDLite_SetError("SDL_SetWindowFullscreen failed: %s", SDL_GetError());
        return 1;
    }

    if(!SDL_SetWindowSize(display->window, width, height)){
        SDLite_SetError("SDL_SetWindowSize failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


int SDLite_DisplaySetFullscreen(SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 1;
    }
    
    if(!SDL_SetWindowFullscreen(display->window, 1)){
        SDLite_SetError("SDL_SetWindowFullscreen failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


int SDLite_Display_GetSize(const SDLite_Display *display, int *w, int *h){

    if(!display || !w || !h){
        SDLite_SetError("Invalid argument in SDLite_Display_GetSize");
        return 1;
    }

    if(!SDL_GetWindowSize(display->window, w, h)){
        SDLite_SetError("SDL_GetWindowSize failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


SDL_Renderer* SDLite_Display_GetSDLRenderer(const SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }

    return display->renderer;
}


SDL_Window* SDLite_Display_GetSDLWindow(const SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }

    return display->window;
}


TTF_TextEngine* SDLite_Display_GetTTFTextEngine(const SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }

    return display->text_engine;
}


SDL_WindowFlags SDLite_Display_GetWindowFlags(const SDLite_Display *display){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 0;
    }

    return SDL_GetWindowFlags(display->window);
}

