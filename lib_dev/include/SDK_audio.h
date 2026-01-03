#ifndef SDK_AUDIO_H
#define SDK_AUDIO_H

// allows header to be C++ compatiable
#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"

// header file stuff goes here


typedef struct{

    SDL_AudioDeviceID device;
    SDL_AudioSpec spec;

} SDK_Audio_Handler;


typedef struct{

    SDL_AudioStream *stream;
    uint8_t *raw_audio_data;
    uint32_t audio_len

} SDK_Sound;


#ifdef __cplusplus
}
#endif


#endif
