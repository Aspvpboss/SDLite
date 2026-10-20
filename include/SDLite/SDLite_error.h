/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/


#ifndef SDLite_ERROR_H
#define SDLite_ERROR_H

#ifdef __cplusplus
extern "C" {
#endif

#include "SDLite/common_libs.h"

/*
    Safe to call from any thread

    Logs an error message with the format
    Uses normal printf string formatting

    Each error log message is capped at 128 characters
    Max of 128 errors before it stops storing themm
*/
SDLite_API void SDLite_SetError(const char *err_format, ...);

/*
    Safe to call from any thread
    
    Polls the internal error logger for errors
    Will keep returning errs each function call until there are no more

    Only fails if SDLite_Init is not called

    returns const char* for success, returns NULL for no errors or failure
*/
SDLite_API const char* SDLite_GetError(void);

#ifdef __cplusplus
}
#endif

#endif