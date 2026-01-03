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

    void *raw_audio;
    uint32_t frames;
    int channels;
    int freq;
    SDL_AudioFormat format;

} SDK_Sound;


#ifdef __cplusplus
}
#endif


#endif
