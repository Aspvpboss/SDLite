#include "SDLite/SDLite_error.h"

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

    return 0;
}


static int check_and_create_mutex() {
    if(errors.mutex) return 0;

    errors.mutex = SDL_CreateMutex();
    if(!errors.mutex) return 1;

    return 0;
}


void SDLite_SetError(const char *err_message) {
    if(check_and_create_mutex()) return;
    if(!err_message) return;

    SDL_LockMutex(errors.mutex);

    SDL_strlcpy(errors.err_buff[errors.len], err_message, MAX_CHARACTERS);
    errors.len %= MAX_ERRORS;

    SDL_UnlockMutex(errors.mutex);
}


const char* SDLite_GetError() {

    if(check_and_create_mutex()) return;

    if(errors.get_error_index >= errors.len){
        errors.get_error_index = 0;
        return NULL;
    }
    const char *err = errors.err_buff[errors.get_error_index];
    errors.get_error_index++;

    return err;
}