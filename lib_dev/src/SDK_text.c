/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDK_Text.h"
#include "SDK_display_internal.h"

struct SDK_Text{

    TTF_Font *font;
    SDL_Color color;
    TTF_Text *text;
    TTF_TextEngine *engine;
    int wrap_width;
    float font_size;
    SDL_FRect render_rect;

};


SDK_Text* SDK_CreateText(
    const SDK_Display *display, const char *display_text, const char *font_path, float font_size, int x, int y, SDL_Color color){
    
    SDK_Text *text = t_malloc(sizeof(SDK_Text));


    text->engine = display->text_engine;
    text->color = color;
    SDL_FRect *render_rect = (SDL_FRect *)&text->render_rect;
    render_rect->x = x;
    render_rect->y = y;
    text->font_size = font_size;
    text->wrap_width = 0;

    if(font_path == NULL){

        text->font = TTF_OpenFont("./assets/default.ttf", font_size);
        if(text->font == NULL){
            t_free(text);
            return NULL;
        }
            

    } else{

        text->font = TTF_OpenFont(font_path, font_size);
        if(text->font == NULL){
            t_free(text);
            return NULL;
        }
            

    }


    if(!display_text){
        display_text = "";
    }

    text->text = TTF_CreateText(text->engine, text->font, display_text, text->wrap_width);
    
    if(text->text == NULL){
        t_free(text);
        return NULL;
    }
    
    TTF_SetTextColor(text->text, color.r, color.g, color.b, color.a);

    TTF_SetTextWrapWidth(text->text, 0);

    int w, h;

    if(!TTF_GetTextSize(text->text, &w,  &h)){
        TTF_DestroyText(text->text);
        t_free(text);
        return NULL;
    }

    render_rect->w = w;
    render_rect->h = h;

    return text;
}


void SDK_DestroyText(SDK_Text *text){

    if(!text) return;

    TTF_DestroyText(text->text);
    TTF_CloseFont(text->font);
    text->engine = NULL;
    t_free(text);

}


int SDK_Text_SetFont(SDK_Text *text, const char *font_path, float font_size){

    if(!text) return 1;
    
    if(font_path == NULL){
        return 1;
    }

    TTF_Font *new_font = TTF_OpenFont(font_path, font_size);

    if(new_font == NULL){
        return 1;
    }

    TTF_CloseFont(text->font);

    text->font = new_font;
    text->font_size = font_size;
    
    if(!TTF_SetTextFont(text->text, text->font)){
        return 1;
    }

    return 0;
}


int SDK_Text_SetFontSize(SDK_Text *text, float font_size){

    if(!text) return 1;

    if(!TTF_SetFontSize(text->font, font_size))
        return 1;

    text->font_size = font_size;

    return 0;
}


int SDK_Text_SetString(SDK_Text *text, const char *string){

    if(!text) return 1;

    if(!TTF_SetTextString(text->text, string, 0)){
        return 1;
    }

    return 0;
}


int SDK_Text_SetPosition(SDK_Text *text, int x, int y){

    if(!text) return 1;

    if(!TTF_SetTextPosition(text->text, x, y)){
        return 1;
    }

    text->render_rect.x = x;
    text->render_rect.y = y;

    return 0;
}


int SDK_Text_Get_RenderRect(const SDK_Text *text, SDL_FRect *render_rect){

    if(!text || !render_rect) return 1;

    int w, h;

    if(!TTF_GetTextSize(text->text, &w, &h)){
        return 1;
    }

    render_rect->w = w;
    render_rect->h = h;
    render_rect->x = text->render_rect.x;
    render_rect->y = text->render_rect.y;    

    return 0;
}


int SDK_Text_SetWrapWidth(SDK_Text *text, int wrap_width_pixels){

    if(!text) return 1;

    if(!TTF_SetTextWrapWidth(text->text, wrap_width_pixels)){
        return 1;
    }

    text->wrap_width = wrap_width_pixels;

    return 0;
}


int SDK_Text_SetColor(SDK_Text *text, SDL_Color color){

    if(!text) return 1;

    if(!TTF_SetTextColor(text->text, color.r, color.g, color.b, color.a)){
        return 1;
    }

    text->color = color;

    return 0;
}



int SDK_Render_Text(SDK_Text *text){

    if(!text) return 1;

    SDL_FRect *render_rect = (SDL_FRect *)&text->render_rect;

    if(!TTF_DrawRendererText(text->text, render_rect->x, render_rect->y))
        return 1;

    return 0;
}

