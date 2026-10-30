/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the Mozilla Public License 2.0 (MPL 2.0).
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 * See the LICENSE.txt file in the project root for license information.
*/

#ifndef SDLite_ERROR_INTERNAL_H
#define SDLite_ERROR_INTERNAL_H

// creates internal mutex
int SDLite_Init_Error_Logger();

// destroys internal mutex
void SDLite_Destroy_Error_Logger();

// resets index value for SDLite_GetError() functionality
void SDLite_Reset_Get_Error_Index();

#endif