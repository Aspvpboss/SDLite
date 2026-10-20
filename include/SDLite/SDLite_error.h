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
    Logs an error message

*/
void SDLite_SetError(const char *err_message);

/*
    Polls the internal error logger for errors
    Will keep returning errs each function call until there are no more

    Only fails if SDLite_Init is not called

    returns const char* for success, returns NULL for no errors or failure
*/
const char* SDLite_GetError();

#ifdef __cplusplus
}
#endif

#endif