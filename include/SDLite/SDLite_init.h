/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/

#ifndef SDLite_INIT_H
#define SDLite_INIT_H

#ifdef __cplusplus
extern "C" {
#endif



#include "SDLite/common_libs.h"

/*
    These functions can be called from any thread, but you should only call them once anyways
*/


/*
    Initializes all SDL systems, and MemTrack for SDLite

    Arguments are for MemTrack configuration

    returns 0 for success, returns 1 for failure
    call SDLite_GetError() for more details    
*/
SDLite_API int SDLite_Init(void (*malloc_err_handler)(void*), void *func_data, bool abort_if_mem_error, bool auto_null_pointers);
    
/*
    deinitializes all SDL systems, and MemTrack for SDLite
    
    If you are using debugSDLite, it dumps into stderr debug allocation info for allocations you haven't freed
*/
SDLite_API void SDLite_Quit(void);

#ifdef __cplusplus
}
#endif



#endif
