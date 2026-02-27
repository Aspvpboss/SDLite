/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_TEXT_H
#define SDK_TEXT_H

#ifdef __cplusplus
extern "C" {
#endif


#include "common_libs.h"
#include "SDK_display.h"

/*
    contains variables needed to display a string onto the screen
    you can read values from rect, but to change the actual values
    you must use SDK_Text_SetPosition
*/
typedef struct SDK_Text SDK_Text;


/*
    Creates a SDK_Text*, this must be freed using SDK_DestroyText()

    You can pass NULL into 'const char *font_path' and 'const char *display_text'.
    If you make font_path NULL, you must update the font using SDK_Text_SetFont() 
    and update the text using SDK_Text_SetString();

    returns SDK_Text* for success, NULL for failure
    Use SDL_GetError() for more error details
*/
SDK1_API SDK_Text* SDK_CreateText(
    SDK_Display *display, const char *display_text, const char *font_path, float font_size, int x, int y, SDL_Color color);


/*
    Frees a SDK_Text*

    Will return early if SDK_Text is NULL
*/
SDK1_API void SDK_DestroyText(SDK_Text *text);


/*
    Sets the font and font_size of the SDK_Text*

    Will fail if SDK_Text* is NULL or if the font fails to open

    If the SDK_Text* already has a font it will properly free it before opening the current font

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_SetFont(SDK_Text *text, const char *font_path, float font_size);


/*
    Sets font_size of the SDK_Text*

    Will fail if SDK_Text* is NULL

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_SetFontSize(SDK_Text *text, float font_size);


/*
    Sets text of SDK_Text*

    Will fail if SDK_Text* is NULL or if char* is NULL

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_SetString(SDK_Text *text, const char *string);


/*
    Sets position of the SDK_Text*

    Will fail if SDK_Text* is NULL

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_SetPosition(SDK_Text *text, int x, int y);

/*
    Fills values of SDL_FRect of the current x, y, w, and h of the SDK_Text*

    Will fail if SDK_Text* is NULL or if SDL_FRect* is NULL

    returns 0 for success, returns 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_Get_RenderRect(SDK_Text *text, SDL_FRect *render_rect);


/*
    Sets wrap width of a SDK_Text in pixels
    Set wrap_width to 0 for no wrap around
    
    Will fail if SDK_Text* is NULL

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_SetWrapWidth(SDK_Text *text, int wrap_width_pixels);


/*
    Sets color of a SDK_Text

    Will fail if SDK_Text* is NULL

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_SetColor(SDK_Text *text, SDL_Color color);


/*
    Renders the SDK_Text to the display it was created with

    Will fail if SDK_Text* is NULL
    
    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Render_Text(SDK_Text *text);

#ifdef __cplusplus
}
#endif


#endif
