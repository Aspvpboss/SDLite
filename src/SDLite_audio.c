/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDLite/SDLite_audio.h"

struct SDLite_Audio_Handler{

    MIX_Mixer *mixer;
    SDLite_Track *tracks;
    uint16_t track_capacity;

};



SDLite_Audio_Handler* SDLite_Create_AudioHandler(uint16_t track_capacity, float master_volume){

    if(track_capacity == 0){
        SDLite_SetError("Track capacity cannot be 0");
        return NULL;
    }
    if(master_volume < 0.0f){
        SDLite_SetError("Master volume cannot be negative");
        return NULL;
    }

    SDLite_Audio_Handler *audio_handler = t_calloc(1, sizeof(SDLite_Audio_Handler));
    if(!audio_handler){
        SDLite_SetError("Failed to allocate audio handler");
        return NULL; 
    }

    audio_handler->mixer = MIX_CreateMixerDevice(SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, NULL);
    if(!audio_handler->mixer){
        SDLite_SetError("MIX_CreateMixerDevice failed: %s", SDL_GetError());
        t_free(audio_handler);
        return NULL;
    }

    audio_handler->tracks = t_calloc(track_capacity, sizeof(SDLite_Track));
    if(!audio_handler->tracks){
        SDLite_SetError("Failed to allocate tracks");
        MIX_DestroyMixer(audio_handler->mixer);
        t_free(audio_handler);
        return NULL;
    }

    audio_handler->track_capacity = track_capacity;
    MIX_SetMixerGain(audio_handler->mixer, master_volume);

    // this makes properly freeing each SDLite_Track if failure later easier
    for(uint16_t i = 0; i < track_capacity; i++){
        audio_handler->tracks[i].track = NULL;
        audio_handler->tracks[i].track_prop = 0;
    } 

    for(uint16_t i = 0; i < track_capacity; i++){
        SDLite_Track *track = &audio_handler->tracks[i];
        track->track = MIX_CreateTrack(audio_handler->mixer);
        track->track_prop = SDL_CreateProperties();

        // properly frees all existing tracks if a track fails to create, this is hard to look at
        if(!track->track || !track->track_prop){
            SDLite_SetError("Failed to create track or properties: %s", SDL_GetError());

            for(uint16_t a = 0; a < track_capacity; a++){
                SDLite_Track *tracks = audio_handler->tracks;  
                if(tracks[a].track) MIX_DestroyTrack(tracks[a].track);
                if(tracks[a].track_prop) SDL_DestroyProperties(tracks[a].track_prop);
            }

            MIX_DestroyMixer(audio_handler->mixer);
            t_free(audio_handler->tracks);
            t_free(audio_handler);
            return NULL;
        }

        SDL_SetNumberProperty(track->track_prop, MIX_PROP_PLAY_LOOPS_NUMBER, 0);
        MIX_SetTrackGain(track->track, 1.0f);

    }

    return audio_handler;
}


void SDLite_Destroy_AudioHandler(SDLite_Audio_Handler *audio_handler){
    
    if(!audio_handler) return;

    for(uint16_t i = 0; i < audio_handler->track_capacity; i++){

        SDLite_Track *track = &audio_handler->tracks[i];
        if(track->track_prop) SDL_DestroyProperties(track->track_prop);
        if(track->track) MIX_DestroyTrack(track->track);
        
    }

    MIX_DestroyMixer(audio_handler->mixer);
    t_free(audio_handler->tracks);
    t_free(audio_handler);

}




int SDLite_Audio_PlayTrack(SDLite_Audio_Handler *audio_handler, uint16_t audio_track){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }

    if(audio_track >= audio_handler->track_capacity){
        SDLite_SetError("Audio track index %u out of bounds", (unsigned int)audio_track);
        return 1;
    }

    SDLite_Track *track = &audio_handler->tracks[audio_track];

    if(!MIX_PlayTrack(track->track, track->track_prop)){
        SDLite_SetError("MIX_PlayTrack failed: %s", SDL_GetError());
        return 1; 
    }

    return 0;
}




int SDLite_Audio_StopTrack(SDLite_Audio_Handler *audio_handler, uint16_t audio_track, int64_t fade_out_frames){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }

    if(audio_track >= audio_handler->track_capacity || audio_handler->track_capacity == 0){
        SDLite_SetError("Audio track index %u out of bounds", (unsigned int)audio_track);
        return 1;
    }

    SDLite_Track *track = &audio_handler->tracks[audio_track];

    if(!MIX_StopTrack(track->track, fade_out_frames)){
        SDLite_SetError("MIX_StopTrack failed: %s", SDL_GetError());
        return 1; 
    }

    return 0;
}




SDLite_Track* SDLite_Audio_GetTrack(const SDLite_Audio_Handler *audio_handler, uint16_t audio_track){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return NULL;
    }

    if(audio_track >= audio_handler->track_capacity){
        SDLite_SetError("Audio track index %u out of bounds", (unsigned int)audio_track);
        return NULL;
    }

    return &audio_handler->tracks[audio_track];
}

MIX_Mixer* SDLite_Audio_GetMixer(const SDLite_Audio_Handler *audio_handler){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return NULL;
    }

    return audio_handler->mixer;
}



int SDLite_Audio_SetTrackAudio(SDLite_Audio_Handler *audio_handler, uint16_t audio_track, MIX_Audio *audio){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }
    if(!audio){
        SDLite_SetError("Audio is NULL");
        return 1;
    }

    if(audio_track >= audio_handler->track_capacity){
        SDLite_SetError("Audio track index %u out of bounds", (unsigned int)audio_track);
        return 1;
    }

    SDLite_Track *track = &audio_handler->tracks[audio_track];

    if(!MIX_SetTrackAudio(track->track, audio)){
        SDLite_SetError("MIX_SetTrackAudio failed: %s", SDL_GetError());
        return 1; 
    }

    return 0;
}




int SDLite_Audio_SetTrackProp(SDLite_Audio_Handler *audio_handler, uint16_t audio_track, const char *prop_name, int64_t value){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }
    if(!prop_name){
        SDLite_SetError("Property name is NULL");
        return 1;
    }

    if(audio_track >= audio_handler->track_capacity){
        SDLite_SetError("Audio track index %u out of bounds", (unsigned int)audio_track);
        return 1;
    }

    SDLite_Track *track = &audio_handler->tracks[audio_track];

    if(!SDL_SetNumberProperty(track->track_prop, prop_name, value)){
        SDLite_SetError("SDL_SetNumberProperty failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}




int SDLite_Audio_SetMasterVolume(SDLite_Audio_Handler *audio_handler, float master_volume){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }

    if(master_volume < 0.0f){
        SDLite_SetError("Master volume cannot be negative");
        return 1;
    }
    if(!MIX_SetMixerGain(audio_handler->mixer, master_volume)){
        SDLite_SetError("MIX_SetMixerGain failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}


int SDLite_Audio_GetMasterVolume(const SDLite_Audio_Handler *audio_handler, float *master_volume){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }
    if(!master_volume){
        SDLite_SetError("master_volume pointer is NULL");
        return 1;
    }

    *master_volume = MIX_GetMixerGain(audio_handler->mixer);

    return 0;
}




int SDLite_Audio_SetTrackVolume(SDLite_Audio_Handler *audio_handler, uint16_t audio_track, float track_volume){

    if(!audio_handler){
        SDLite_SetError("Audio handler is NULL");
        return 1;
    }
    if(track_volume < 0.0f){
        SDLite_SetError("Track volume cannot be negative");
        return 1;
    }

    if(audio_track >= audio_handler->track_capacity){
        SDLite_SetError("Audio track index %u out of bounds", (unsigned int)audio_track);
        return 1;
    }
    SDLite_Track *track = &audio_handler->tracks[audio_track];
    
    if(!MIX_SetTrackGain(track->track, track_volume)){
        SDLite_SetError("MIX_SetTrackGain failed: %s", SDL_GetError());
        return 1;
    }

    return 0;
}
