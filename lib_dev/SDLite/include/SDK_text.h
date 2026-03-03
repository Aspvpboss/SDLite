/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDLite_TEXT_H
#define SDLite_TEXT_H

#ifdef __cplusplus
extern "C" {
#endif


#include "common_libs.h"
#include "SDLite_display.h"

/*
    contains variables needed to display a string onto the screen
    you can read values from rect, but to change the actual values
    you must use SDLite_Text_UpdatePosition
*/
typedef struct SDLite_Text{

    void *const data;
    const SDL_FRect render_rect;

} SDLite_Text;

/*
    Creates a SDLite_Text, this must be freed using SDLite_DestroyText()

    You can pass NULL into 'const char *font_path' and 'const char *display_text'.
    If you do you must update the font using SDLite_TextUpdateFont() 
    and update the text using

    returns SDLite_Text* for success, NULL for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL SDLite_Text* SDLite_CreateText(SDLite_Display *display, const char *font_path, float font_size, int x, int y, SDL_Color color);


/*
    Frees a SDLite_Text

    Will return early if SDLite_Text is NULL
*/
SDLite_DLL void SDLite_DestroyText(SDLite_Text *text);


/*
    updates the font, and font size of a SDLite_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Text_UpdateFont(SDLite_Text *text, const char *font_path, float font_size);


/*
    updates font size of a SDLite_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Text_UpdateFontSize(SDLite_Text *text, float font_size);


/*
    updates text of a SDLite_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Text_UpdateString(SDLite_Text *text, const char *string);


/*
    updates text position of a SDLite_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Text_UpdatePosition(SDLite_Text *text, int x, int y);

/*
    updates width and height of a SDLite_Text

*/
SDLite_DLL int SDLite_Text_UpdateSize(SDLite_Text *text);


/*
    updates wrap width of a SDLite_Text
    set wrap_width to 0 for no wrap around

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Text_UpdateWrapWidth(SDLite_Text *text, int wrap_width);


/*
    updates color of a SDLite_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Text_UpdateColor(SDLite_Text *text, SDL_Color color);


/*
    renders the SDLite_Text to the display it was created with

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDLite_DLL int SDLite_Render_Text(SDLite_Text *text);

#ifdef __cplusplus
}
#endif


#endif
