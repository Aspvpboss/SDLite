/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDK_time.h"


#define MAX_SAMPLES 200


struct SDK_Time{

    double dt;
    bool fps_updated;
    double fps;
    double fps_limit;

    uint64_t previous_counter;
    uint64_t counter_frequency;
    uint64_t update_count;
    uint16_t frame;
    uint16_t collected_frames;
    double total;
    double dt_buffer[MAX_SAMPLES];

};



SDK_Time* SDK_CreateTime(double fps_limit){

    if(fps_limit == 0) return NULL;

    SDK_Time *time = t_malloc(sizeof(SDK_Time));
    if(!time) return NULL;

    time->collected_frames = 0;
    time->frame = 0;
    time->total = 0.0f;
    time->update_count = 0;
    time->previous_counter = 0;
    time->counter_frequency = 0;

    memset(time->dt_buffer, 0, sizeof(time->dt_buffer));

    time->fps_limit = fps_limit;
    time->dt = 0.0f;
    time->fps = 0.0f;
    time->fps_updated = false;


    return time;
}

void SDK_DestroyTime(SDK_Time *time){

    if(!time) return;
    t_free(time);

}


double SDK_Time_GetFPS(SDK_Time *time){
    
    if(!time) return -1.0f;

    return time->fps;
}

double SDK_Time_GetDT(SDK_Time *time){
    
    if(!time) return -1.0f;

    return time->dt;
}


bool SDK_Time_FPS_Update(SDK_Time *time){

    if(!time) return false;

    return time->fps_updated;
}


double SDK_Time_Get_FPSLimit(SDK_Time *time){

    if(!time) return 0.0f;

    return time->fps_limit;
}

int SDK_Time_Set_FPSLimit(SDK_Time *time, double new_fps_limit){

    if(!time || new_fps_limit == 0.0f) return 1;

    time->fps_limit = new_fps_limit;

    return 0;
}



int SDK_CalculateDT(SDK_Time *time){

    if(!time) return 1;

    if(time->counter_frequency == 0){
        time->counter_frequency = SDL_GetPerformanceFrequency();
        time->previous_counter = SDL_GetPerformanceCounter();
        time->dt = 0.0f;
        return 0;
    }
    

    uint64_t current = SDL_GetPerformanceCounter();
    time->dt = (double)(current - time->previous_counter) / (double)time->counter_frequency;
    time->previous_counter = current;

    return 0;
}


int SDK_CalculateFPS(SDK_Time *time){

    if(!time) return 1;
    bool *fps_updated = (bool *)&time->fps_updated;
    double *fps = (double *)&time->fps;

    if(time->fps_updated == 1){
        *fps_updated = false;
    }

    double *dt_buffer = time->dt_buffer;

    time->total -= dt_buffer[time->frame];
    dt_buffer[time->frame] = time->dt;
    time->total += time->dt;
    
    if(time->collected_frames < MAX_SAMPLES) time->collected_frames++;

    time->frame = (time->frame + 1) % MAX_SAMPLES;
    *fps = 1 / (time->total / time->collected_frames);
    time->update_count++;

    if(time->update_count > time->fps_limit){
        *fps_updated = 1;
        time->update_count = 0;
    }
        
    return 0;
}


int SDK_LimitFPS(SDK_Time *time){

    if(!time || time->fps_limit < 0.0f) return 1;
    double *dt = (double *)&time->dt;


    uint64_t counter_frequency = time->counter_frequency;
    uint64_t current_counter = SDL_GetPerformanceCounter();
    uint64_t previous_counter = time->previous_counter;
    double delta_time = (double)(current_counter - previous_counter) / (double)counter_frequency;
    double target_delta_time = (1.0 / time->fps_limit); 
    


    double remaining = target_delta_time - delta_time;
    if(remaining < 0){
        return 0;
    }


    if(remaining > 0.002){
        Uint32 ms = (Uint32)((remaining - 0.001) * 1000.0);
        if (ms > 0) SDL_Delay(ms);
    }

    do{
        current_counter = SDL_GetPerformanceCounter();
        delta_time = (double)(current_counter - previous_counter) / (double)counter_frequency;
    } while(delta_time < target_delta_time);

    time->previous_counter = current_counter;

    *dt = delta_time;

    return 0;
}


int SDK_TimeFunctions(SDK_Time *time){
    if(SDK_CalculateDT(time)) return 1;
    if(SDK_LimitFPS(time)) return 1;
    if(SDK_CalculateFPS(time)) return 1;

    return 0;
}
