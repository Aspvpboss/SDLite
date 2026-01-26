/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

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

} SDK_Track;



typedef struct{

    float master_volume;
    MIX_Mixer *mixer;
    SDK_Track *tracks;
    uint16_t track_capacity;

} SDK_Audio_Handler;


/*
    Creates an SDK_Audio_Handler*

    SDK_Audio_Handler owns all MIX_Tracks, MIX_Mixer, and SDK_Tracks

    Use SDK_Destroy_AudioHandler to free SDK_Audio_Handler

    returns SDK_Audio_Handler* for success, returns NULL for failure
*/
SDK1_API SDK_Audio_Handler* SDK_Create_AudioHandler(uint16_t track_capacity, float master_volume);


/*
    Frees an SDK_Audio_Handler*

    Will return early if SDK_Audio_Handler* is NULL
*/
SDK1_API void SDK_Destroy_AudioHandler(SDK_Audio_Handler *audio_handler);


/*
    Gets the specified SDK_Track*, the SDK_Audio_Handler still owns the SDK_Track*  

    Use the SDK_Track* cautiously   

    returns SDK_Track* for success, returns NULL for failure
*/
SDK1_API SDK_Track* SDK_Audio_GetTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track);

/*
    Plays the audio that has been loaded to the specified audio_track

    Function will fail if no audio has been loaded to the track

    returns 0 for success, returns 1 for failure 
*/
SDK1_API int SDK_Audio_PlayTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track);

/*
    Stops the audio that's playing on the specified audio_track

    Function will fail if no audio has been loaded to the track

    returns 0 for success, returns 1 for failure 
*/
SDK1_API int SDK_Audio_StopTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track, int64_t fade_out_frames);

/*
    Loads a MIX_Audio* to the specified audio_track

    To load a MIX_Audio* use MIX_LoadAudio()
    MIX_Audio* must be freed using MIX_DestroyAudio()

    Look at the SDL_Mixer documentation for more information

    returns 0 for success, returns 1 for failure 
*/
SDK1_API int SDK_Audio_SetTrackAudio(SDK_Audio_Handler *audio_handler, uint16_t audio_track, MIX_Audio *audio);

/*
    Sets a value to a specified property in the specified audio_track 

    Look at the SDL documentation about SDL_PropertiesID for more info,
    Look at the SDL_Mixer properties for more info

    returns 0 for success, returns 1 for failure 
*/
SDK1_API int SDK_Audio_SetTrackProp(SDK_Audio_Handler *audio_handler, uint16_t audio_track, const char *prop_name, int64_t value);

/*
    Sets the master volume of all audio, volume range between 0.0f - 1.0f

    returns 0 for success, returns 1 for failure 
*/
SDK1_API int SDK_Audio_SetMasterVolume(SDK_Audio_Handler *audio_handler, float master_volume);

/*
    Sets the track volume for a specified track_volume, volume range between 0.0f - 1.0f

    returns 0 for success, returns 1 for failure 
*/
SDK1_API int SDK_Audio_SetTrackVolume(SDK_Audio_Handler *audio_handler, uint16_t audio_track, float track_volume);




#ifdef __cplusplus
}
#endif


#endif
