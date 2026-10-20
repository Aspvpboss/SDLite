/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDLite/SDLite_text.h"
#include "SDLite_display_internal.h"

struct SDLite_Text{

    SDLite_Text_Font *ref_font;
    TTF_Text *text;
    TTF_TextEngine *engine;
    SDL_Color color;
    int x, y;
};

struct SDLite_Text_Font {
    TTF_Font *font;
    uint64_t refs;
};


SDLite_Text_Font* SDLite_Create_Text_Font(const char *font_path, float font_size) {
    if(!font_path){
        SDLite_SetError("Font path cannot be NULL");
        return NULL;
    }
    if(font_size <= 0.0f){
        SDLite_SetError("Font size must be greater than 0");
        return NULL;
    }

    SDLite_Text_Font *font = t_calloc(1, sizeof(SDLite_Text_Font));
    if(!font){
        SDLite_SetError("Failed to allocate text font");
        return NULL;
    }

    font->font = TTF_OpenFont(font_path, font_size);
    if(!font->font){
        SDLite_SetError("TTF_OpenFont failed: %s", SDL_GetError());
        t_free(font);
        return NULL;
    }
    font->refs = 1;

    return font;
}


TTF_Font* SDLite_Text_Font_GetFont(const SDLite_Text_Font *font) {
    if(!font){
        SDLite_SetError("Text font is NULL");
        return NULL;
    }
    return font->font;
}

uint64_t SDLite_Text_Font_GetRefs(const SDLite_Text_Font *font) {
    if(!font){
        SDLite_SetError("Text font is NULL");
        return 0;
    }

    return font->refs;
}


int SDLite_Text_Font_GetFontSize(const SDLite_Text_Font *font, float *font_size) {
    if(!font || !font_size){
        SDLite_SetError("Invalid argument in SDLite_Text_Font_GetFontSize");
        return 1;
    }

    float result = TTF_GetFontSize(font->font);
    if(result == 0.0f){
        SDLite_SetError("TTF_GetFontSize failed: %s", SDL_GetError());
        return 1;
    }

    *font_size = result;

    return 0;
}


int SDLite_Text_Font_SetFontSize(SDLite_Text_Font *font, float font_size) {

    if(!font){
        SDLite_SetError("Text font is NULL");
        return 1;
    }
    if(font_size <= 0.0f){
        SDLite_SetError("Font size must be greater than 0");
        return 1;
    }
    
    if(!TTF_SetFontSize(font->font, font_size)){
        SDLite_SetError("TTF_SetFontSize failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}



void SDLite_Destroy_Text_Font(SDLite_Text_Font **font) {
    if(!font || !(*font)) return;

    (*font)->refs -= 1; 

    if((*font)->refs == 0){
        TTF_CloseFont((*font)->font);
        t_free((*font));
        *font = NULL;
    }
}


SDLite_Text* SDLite_CreateText(
    const SDLite_Display *display, const char *display_text, SDLite_Text_Font *ref_font, int x, int y, SDL_Color color){

    if(!display){
        SDLite_SetError("Display is NULL");
        return NULL;
    }
    if(!ref_font){
        SDLite_SetError("Reference font is NULL");
        return NULL;
    }

    SDLite_Text *text = t_calloc(1, sizeof(SDLite_Text));
    if(!text){
        SDLite_SetError("Failed to allocate text");
        return NULL;
    }

    text->x = x;
    text->y = y;
    text->engine = display->text_engine;
    text->color = color;
    text->ref_font = ref_font;

    if(!display_text){
        display_text = "";
    }

    text->text = TTF_CreateText(text->engine, text->ref_font->font, display_text, 0);
    
    if(!text->text){
        SDLite_SetError("TTF_CreateText failed: %s", SDL_GetError());
        t_free(text);
        return NULL;
    }
    
    if(!TTF_SetTextColor(text->text, color.r, color.g, color.b, color.a)){
        SDLite_SetError("TTF_SetTextColor failed: %s", SDL_GetError());
        TTF_DestroyText(text->text);
        t_free(text);
        return NULL;
    }

    if(!TTF_SetTextWrapWidth(text->text, 0)){
        SDLite_SetError("TTF_SetTextWrapWidth failed: %s", SDL_GetError());
        TTF_DestroyText(text->text);
        t_free(text);
        return NULL;
    }

    ref_font->refs += 1;

    return text;
}


void SDLite_DestroyText(SDLite_Text *text){

    if(!text) return;

    TTF_DestroyText(text->text);
    SDLite_Destroy_Text_Font(&text->ref_font);
    text->engine = NULL;
    t_free(text);

}


TTF_Text* SDLite_Text_GetTTFText(const SDLite_Text *text){

    if(!text){
        SDLite_SetError("Text is NULL");
        return NULL;
    }

    return text->text;
}

TTF_Font* SDLite_Text_GetTTFFont(const SDLite_Text *text){

    if(!text){
        SDLite_SetError("Text is NULL");
        return NULL;
    }

    return SDLite_Text_Font_GetFont(text->ref_font);
}


int SDLite_Text_SetFont(SDLite_Text *text, SDLite_Text_Font *new_font){

    if(!text){
        SDLite_SetError("Text is NULL");
        return 1;
    }
    if(!new_font){
        SDLite_SetError("New font is NULL");
        return 1;
    }

    if(text->ref_font == new_font){
        SDLite_SetError("New font is identical to current font");
        return 1;
    }

    if(!TTF_SetTextFont(text->text, new_font->font)){
        SDLite_SetError("TTF_SetTextFont failed: %s", SDL_GetError());
        return 1;
    }

    new_font->refs += 1;
    SDLite_Destroy_Text_Font(&text->ref_font);
    text->ref_font = new_font;    

    return 0;
}




int SDLite_Text_SetString(SDLite_Text *text, const char *string){

    if(!text){
        SDLite_SetError("Text is NULL");
        return 1;
    }
    if(!string){
        SDLite_SetError("String cannot be NULL");
        return 1;
    }

    if(!TTF_SetTextString(text->text, string, 0)){
        SDLite_SetError("TTF_SetTextString failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


int SDLite_Text_SetPosition(SDLite_Text *text, int x, int y){

    if(!text){
        SDLite_SetError("Text is NULL");
        return 1;
    }

    text->x = x;
    text->y = y;

    return 0;
}


int SDLite_Text_Get_RenderRect(const SDLite_Text *text, SDL_FRect *render_rect){

    if(!text || !render_rect){
        SDLite_SetError("Invalid argument in SDLite_Text_Get_RenderRect");
        return 1;
    }

    int w, h;

    if(!TTF_GetTextSize(text->text, &w, &h)){
        SDLite_SetError("TTF_GetTextSize failed: %s", SDL_GetError());
        return 1;
    }

    render_rect->w = w;
    render_rect->h = h;
    render_rect->x = text->x;
    render_rect->y = text->y;    

    return 0;
}


int SDLite_Text_SetWrapWidth(SDLite_Text *text, int wrap_width_pixels){

    if(!text){
        SDLite_SetError("Text is NULL");
        return 1;
    }

    if(!TTF_SetTextWrapWidth(text->text, wrap_width_pixels)){
        SDLite_SetError("TTF_SetTextWrapWidth failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


int SDLite_Text_SetColor(SDLite_Text *text, SDL_Color color){

    if(!text){
        SDLite_SetError("Text is NULL");
        return 1;
    }

    if(!TTF_SetTextColor(text->text, color.r, color.g, color.b, color.a)){
        SDLite_SetError("TTF_SetTextColor failed: %s", SDL_GetError());
        return 1;
    }

    text->color = color;

    return 0;
}



int SDLite_Render_Text(SDLite_Text *text){

    if(!text){
        SDLite_SetError("Text is NULL");
        return 1;
    }
    if(!text->ref_font || !text->ref_font->font){
        SDLite_SetError("Text font is NULL");
        return 1;
    }

    if(!TTF_DrawRendererText(text->text, text->x, text->y)){
        SDLite_SetError("TTF_DrawRendererText failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}

