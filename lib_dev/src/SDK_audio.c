#define DR_MP3_IMPLEMENTATION


#include "SDK_audio.h"

// so gcc doesn't get angr
int audio(){

    drmp3 mp3;

    if (!drmp3_init_file(&mp3, "audio.mp3", NULL)) {
        printf("Failed to open MP3 file\n");
        return 1;
    }

    printf("Channels: %d\n", mp3.channels);
    printf("Sample Rate: %d\n", mp3.sampleRate);

    // Total number of PCM frames
    drmp3_uint64 totalFrames = drmp3_get_pcm_frame_count(&mp3);
    printf("Total frames: %llu\n", (unsigned long long)totalFrames);

    // Allocate buffer (interleaved float samples)
    float *pcm = malloc((size_t)(totalFrames * mp3.channels * sizeof(float)));

    if (!pcm) {
        drmp3_uninit(&mp3);
        return 1;
    }

    drmp3_read_pcm_frames_f32(&mp3, totalFrames, pcm);

    // Use PCM data here (send to SDL3 audio, etc.)

    free(pcm);
    drmp3_uninit(&mp3);

    return 0;
}
