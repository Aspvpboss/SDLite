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



SDK1_API SDK_Audio_Handler* SDK_Create_AudioHandler(uint16_t track_capacity, float master_volume);
SDK1_API void SDK_Destroy_AudioHandler(SDK_Audio_Handler *audio_handler);
SDK1_API SDK_Track* SDK_Audio_GetTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track);
SDK1_API int SDK_Audio_PlayTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track);
SDK1_API int SDK_Audio_StopTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track, int64_t fade_out_frames);
SDK1_API int SDK_Audio_SetTrackAudio(SDK_Audio_Handler *audio_handler, uint16_t audio_track, MIX_Audio *audio);
SDK1_API int SDK_Audio_SetTrackProp(SDK_Audio_Handler *audio_handler, uint16_t audio_track, const char *prop_name, int64_t value);
SDK1_API int SDK_Audio_SetMasterVolume(SDK_Audio_Handler *audio_handler, float master_volume);
SDK1_API int SDK_Audio_SetTrackVolume(SDK_Audio_Handler *audio_handler, uint16_t audio_track, float track_volume);




#ifdef __cplusplus
}
#endif


#endif
