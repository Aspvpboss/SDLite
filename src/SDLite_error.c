#include "SDLite/SDLite_error.h"
#include <stdarg.h>

#define MAX_ERRORS 128
#define MAX_CHARACTERS 128

typedef struct {
    char err_buff[MAX_ERRORS][MAX_CHARACTERS];
    SDL_Mutex *mutex;
    uint64_t len;
    uint64_t get_error_index;
    bool init;
} SDLite_Error_Logger;

static SDLite_Error_Logger errors = {0};



int SDLite_Init_Error_Logger(){

    errors.mutex = SDL_CreateMutex();
    if(!errors.mutex) return 1;

    errors.init = true;

    return 0;
}

void SDLite_Destroy_Error_Logger(){
    SDL_DestroyMutex(errors.mutex);
    errors.init = false;
}

void SDLite_Reset_Get_Error_Index(){
    SDL_LockMutex(errors.mutex);
    errors.get_error_index = 0;
    SDL_UnlockMutex(errors.mutex);
}


void SDLite_SetError(const char *err_format, ...) {
    if(errors.init == false || !err_format) return;

    va_list args;
    va_start(args, err_format);

    SDL_LockMutex(errors.mutex);

    vsnprintf(errors.err_buff[errors.len], MAX_CHARACTERS, err_format, args); 

    errors.len = SDL_min(errors.len + 1, MAX_ERRORS);

    va_end(args);

    SDL_UnlockMutex(errors.mutex);
}


const char* SDLite_GetError() {
    if(errors.init == false) return NULL;

    SDL_LockMutex(errors.mutex);

    if(errors.get_error_index >= errors.len){
        errors.get_error_index = 0;
        SDL_UnlockMutex(errors.mutex);
        return NULL;
    }
    const char *err = errors.err_buff[errors.get_error_index];
    errors.get_error_index++;
    
    SDL_UnlockMutex(errors.mutex);

    return err;
}