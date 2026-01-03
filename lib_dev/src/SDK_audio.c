#define DR_MP3_IMPLEMENTATION


#include "SDK_audio.h"




#define MP3_CHUNK_FRAMES 4096

typedef struct {
    drmp3 mp3;
    float buffer[MP3_CHUNK_FRAMES * 2]; // max 2 channels
} MP3_Player;

// SDL3 callback: decodes a chunk and pushes it to the stream
static void SDLCALL mp3_callback(void *userdata, SDL_AudioStream *stream, int requested_bytes, int total_bytes)
{
    MP3_Player *player = (MP3_Player *)userdata;
    if (!player) return;

    drmp3_uint64 frames = drmp3_read_pcm_frames_f32(&player->mp3, MP3_CHUNK_FRAMES, player->buffer);
    if (frames == 0) return;

    uint32_t bytes = (uint32_t)(frames * player->mp3.channels * sizeof(float));
    SDL_PutAudioStreamData(stream, player->buffer, bytes);
}

// Minimal audio function: queues MP3 and returns immediately
SDL_AudioStream *audio(void)
{
    static MP3_Player player;            // stays alive for program duration
    static SDL_AudioStream *stream = NULL;  // keep stream alive

    if(stream) return stream; // already queued

    const char *filename = "SDK1/assets/sample_mp3.mp3";

    if(!drmp3_init_file(&player.mp3, filename, NULL)) {
        printf("Failed to open MP3: %s\n", filename);
        return NULL;
    }

    SDL_AudioSpec spec;
    SDL_zero(spec);
    spec.format   = SDL_AUDIO_F32;
    spec.freq     = player.mp3.sampleRate;
    spec.channels = player.mp3.channels;

    stream = SDL_OpenAudioDeviceStream(
        SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, // correct SDL3 constant
        &spec,
        mp3_callback,
        &player
    );

    if(!stream) {
        printf("Failed to open SDL3 audio stream: %s\n", SDL_GetError());
        drmp3_uninit(&player.mp3);
        return NULL;
    }

    // SDL3 streams start automatically, no need to resume
    return stream;
}
