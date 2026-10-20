#ifndef SDLite_ERROR_INTERNAL_H
#define SDLite_ERROR_INTERNAL_H

// creates internal mutex
int SDLite_Init_Error_Logger();

// destroys internal mutex
void SDLite_Destroy_Error_Logger();

// resets index value for SDLite_GetError() functionality
void SDLite_Reset_Get_Error_Index();

#endif