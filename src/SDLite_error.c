#include "SDLite/SDLite_error.h"

#define MAX_ERRORS 256
#define MAX_CHARACTERS 256

typedef struct {
    char err_buff[MAX_ERRORS][MAX_CHARACTERS];
    SDL_Mutex *mutex;
} SDLite_Error_Handler;

static SDLite_Error_Handler errors;


