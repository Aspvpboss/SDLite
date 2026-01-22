#include "SDK_audio.h"




SDK_Audio_Handler* SDK_Create_AudioHandler(uint16_t track_capacity, float master_volume){

    SDK_Audio_Handler *audio_handler = t_malloc(sizeof(SDK_Audio_Handler));
    if(!audio_handler) return NULL; 

    audio_handler->mixer = MIX_CreateMixerDevice(SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, NULL);
    if(!audio_handler->mixer){
        t_free(audio_handler);
        return NULL;
    }

    audio_handler->tracks = t_malloc(sizeof(SDK_Track) * track_capacity);
    if(!audio_handler->tracks){
        MIX_DestroyMixer(audio_handler->mixer);
        t_free(audio_handler);
        return NULL;
    }

    audio_handler->track_capacity = track_capacity;
    audio_handler->master_volume = master_volume;
    MIX_SetMasterGain(audio_handler->mixer, master_volume);

    // this makes properly freeing each SDK_Track if failure later easier
    for(uint16_t i = 0; i < track_capacity; i++){
        audio_handler->tracks[i].track = NULL;
        audio_handler->tracks[i].track_prop = 0;
    } 

    for(uint16_t i = 0; i < track_capacity; i++){
        SDK_Track *track = &audio_handler->tracks[i];
        track->track = MIX_CreateTrack(audio_handler->mixer);
        track->track_prop = SDL_CreateProperties();

        // properly frees all existing tracks if a track fails to create, this is hard to look at
        if(!track->track || !track->track_prop){

            for(uint16_t a = 0; a < track_capacity; a++){
                SDK_Track *tracks = audio_handler->tracks;  
                if(tracks[a].track) MIX_DestroyTrack(tracks[a].track);
                if(tracks[a].track_prop) SDL_DestroyProperties(tracks[a].track_prop);
                MIX_DestroyMixer(audio_handler->mixer);
                t_free(audio_handler);
                return NULL;
            }
        }

        track->loops = 0;
        SDL_SetNumberProperty(track->track_prop, MIX_PROP_PLAY_LOOPS_NUMBER, track->loops);
        track->track_volume = 1.0f;
        MIX_SetTrackGain(track->track, track->track_volume);


    }

    return audio_handler;
}


void SDK_Destroy_AudioHandler(SDK_Audio_Handler *audio_handler){
    
    if(!audio_handler) return;

    for(uint16_t i = 0; i < audio_handler->track_capacity; i++){

        SDK_Track *track = &audio_handler->tracks[i];
        if(track->track_prop) SDL_DestroyProperties(track->track_prop);
        if(track->track) MIX_DestroyTrack(track->track);
        
    }

    t_free(audio_handler->tracks);
    t_free(audio_handler);

}




int SDK_Audio_PlayTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track){

    if(!audio_handler) return 1;

    if(audio_track >= audio_handler->track_capacity) return 1;

    SDK_Track *track = &audio_handler->tracks[audio_track];

    if(!MIX_PlayTrack(track->track, track->track_prop)) return 1; 

    return 0;
}




int SDK_Audio_StopTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track, int64_t fade_out_frames){

    if(!audio_handler) return 1;

    if(audio_track >= audio_handler->track_capacity) return 1;

    SDK_Track *track = &audio_handler->tracks[audio_track];

    if(!MIX_StopTrack(track->track, fade_out_frames)) return 1; 

    return 0;
}




SDK_Track* SDK_Audio_GetTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track){

    if(!audio_handler) return NULL;

    if(audio_track >= audio_handler->track_capacity) return NULL;

    return &audio_handler->tracks[audio_track];
}



int SDK_Audio_SetTrackAudio(SDK_Audio_Handler *audio_handler, uint16_t audio_track, MIX_Audio *audio){

    if(!audio_handler || !audio) return 1;

    if(audio_track >= audio_handler->track_capacity) return 1;

    SDK_Track *track = &audio_handler->tracks[audio_track];

    if(!MIX_SetTrackAudio(track->track, audio)) return 1; 

    return 0;
}




int SDK_Audio_SetTrackProp(SDK_Audio_Handler *audio_handler, uint16_t audio_track, const char *prop_name, int64_t value){

    if(!audio_handler || !prop_name) return 1;

    if(audio_track >= audio_handler->track_capacity) return 1;

    SDK_Track *track = &audio_handler->tracks[audio_track];

    if(!SDL_SetNumberProperty(track->track_prop, prop_name, value)) return 1;

    return 0;
}




int SDK_Audio_SetMasterVolume(SDK_Audio_Handler *audio_handler, float master_volume){

    if(!audio_handler) return 1;

    MIX_SetMasterGain(audio_handler->mixer, master_volume);
    audio_handler->master_volume = master_volume;

    return 0;
}




int SDK_Audio_SetTrackVolume(SDK_Audio_Handler *audio_handler, uint16_t audio_track, float track_volume){

    if(!audio_handler) return 1;

    if(audio_track >= audio_handler->track_capacity) return 1;
    SDK_Track *track = &audio_handler->tracks[audio_track];
    
    if(!MIX_SetTrackGain(track->track, track_volume)) return 1;

    track->track_volume = track_volume;

    return 0;
}
