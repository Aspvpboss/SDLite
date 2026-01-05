#ifndef SDK_AUDIO_H
#define SDK_AUDIO_H

// allows header to be C++ compatiable
#ifdef __cplusplus
extern "C"{
#endif

#include "common_libs.h"

typedef struct{

    MIX_Track *track;
    SDL_PropertiesID track_prop;
    float track_volume;
    int16_t loops;

} SDK_Track;



typedef struct{

    float master_volume;
    MIX_Mixer *mixer;
    SDK_Track *tracks;
    uint16_t track_capacity;

} SDK_Audio_Handler;



#ifdef __cplusplus
}
#endif


#endif
