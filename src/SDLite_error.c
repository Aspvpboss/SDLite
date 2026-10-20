#include "SDLite/SDLite_error.h"
#include <stdarg.h>

#define MAX_ERRORS 128
#define MAX_CHARACTERS 128

typedef struct {
    char err_buff[MAX_ERRORS][MAX_CHARACTERS];
    SDL_Mutex *mutex;
    uint32_t write_idx;
    uint32_t read_idx;
    uint32_t count;
    bool init;
} SDLite_Error_Logger;

static SDLite_Error_Logger errors = {0};



int SDLite_Init_Error_Logger(){

    if(errors.init) return 0;

    errors.mutex = SDL_CreateMutex();
    if(!errors.mutex) return 1;

    errors.init = true;
    errors.write_idx = 0;
    errors.read_idx = 0;
    errors.count = 0;

    return 0;
}

void SDLite_Destroy_Error_Logger(){
    if(!errors.init) return;
    SDL_DestroyMutex(errors.mutex);
    errors.mutex = NULL;
    errors.write_idx = 0;
    errors.read_idx = 0;
    errors.count = 0;
    errors.init = false;
}

void SDLite_Reset_Get_Error_Index(){
    SDL_LockMutex(errors.mutex);
    errors.write_idx = 0;
    errors.read_idx = 0;
    errors.count = 0;
    SDL_UnlockMutex(errors.mutex);
}


void SDLite_SetError(const char *err_format, ...) {
    if(errors.init == false || !err_format) return;

    va_list args;
    va_start(args, err_format);

    SDL_LockMutex(errors.mutex);

    vsnprintf(errors.err_buff[errors.write_idx], MAX_CHARACTERS, err_format, args); 
    errors.write_idx = (errors.write_idx + 1) % MAX_ERRORS;

    if(errors.count < MAX_ERRORS){
        errors.count++;
    } else{
        errors.read_idx = (errors.read_idx + 1) % MAX_ERRORS;
    }

    va_end(args);

    SDL_UnlockMutex(errors.mutex);
}


const char* SDLite_GetError(void) {
    if(errors.init == false) return NULL;

    SDL_LockMutex(errors.mutex);

    if(errors.count == 0){
        SDL_UnlockMutex(errors.mutex);
        return NULL;
    }

    const char *err = errors.err_buff[errors.read_idx];
    errors.read_idx = (errors.read_idx + 1) % MAX_ERRORS;
    errors.count--;
    
    SDL_UnlockMutex(errors.mutex);

    return err;
}