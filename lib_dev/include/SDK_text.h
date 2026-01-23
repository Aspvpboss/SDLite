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
    you must use SDK_Text_UpdatePosition
*/
typedef struct SDK_Text{

    void *const data;
    const SDL_FRect render_rect;

} SDK_Text;

/*
    Creates a SDK_Text, this must be freed using SDK_DestroyText()

    You can pass NULL into 'const char *font_path' and 'const char *display_text'.
    If you do you must update the font using SDK_TextUpdateFont() 
    and update the text using

    returns SDK_Text* for success, NULL for failure
    Use SDL_GetError() for more error details
*/
SDK1_API SDK_Text* SDK_CreateText(SDK_Display *display, const char *font_path, float font_size, int x, int y, SDL_Color color);


/*
    Frees a SDK_Text

    Will return early if SDK_Text is NULL
*/
SDK1_API void SDK_DestroyText(SDK_Text *text);


/*
    updates the font, and font size of a SDK_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_UpdateFont(SDK_Text *text, const char *font_path, float font_size);


/*
    updates font size of a SDK_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_UpdateFontSize(SDK_Text *text, float font_size);


/*
    updates text of a SDK_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_UpdateString(SDK_Text *text, const char *string);


/*
    updates text position of a SDK_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_UpdatePosition(SDK_Text *text, int x, int y);

/*
    updates width and height of a SDK_Text

*/
SDK1_API int SDK_Text_UpdateSize(SDK_Text *text);


/*
    updates wrap width of a SDK_Text
    set wrap_width to 0 for no wrap around

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_UpdateWrapWidth(SDK_Text *text, int wrap_width);


/*
    updates color of a SDK_Text

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Text_UpdateColor(SDK_Text *text, SDL_Color color);


/*
    renders the SDK_Text to the display it was created with

    returns 0 for success, 1 for failure
    Use SDL_GetError() for more error details
*/
SDK1_API int SDK_Render_Text(SDK_Text *text);

#ifdef __cplusplus
}
#endif


#endif
