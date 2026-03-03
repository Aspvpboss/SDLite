// this is the test file for the framework
// the entire file is just bad practice, but idc

#include "SDK.h"

#define TEXTURE_PATH_BLUE "./assets/blue.bmp"
#define TEXTURE_PATH_COOL "./assets/char_spritesheet.png"


typedef enum{

    IDLE_ANIMATION,
    MAX_ANIMATIONS

} Player_Animations;




void update_text(SDLite_Text *text, double fps){

    char fps_text[40];

    snprintf(fps_text, sizeof(fps_text), "FPS: %.1f", fps);

    SDLite_Text_UpdateString(text, fps_text);

}


int thread_func(void *ptr){
    t_malloc(10);
    return 0;
}


int main(){

    if(SDLite_Init(NULL, NULL, true, true)){
        return 1;
    }

    void *data = NULL;
    SDL_Thread *thread = SDL_CreateThread(thread_func, "function", data);
    int result = 0;
    SDL_WaitThread(thread, &result);

    int macro, minor, micro;
    SDLite_Version_GetNumbers(&macro, &minor, &micro);
    printf("SDK version: %d.%d.%d\n", macro, minor, micro);


    SDLite_Audio_Handler *audio_handler = SDLite_Create_AudioHandler(4, 1.0f);
    SDLite_Display *display = SDLite_CreateDisplay("SDK window", 800, 800, SDL_WINDOW_MAXIMIZED);
    SDLite_Time *time = SDLite_CreateTime(144);
    SDLite_Input *input = SDLite_CreateInput();
    SDLite_Text *text = SDLite_CreateText(display, NULL, 20, 5, 5, (SDL_Color){255, 255, 255, 255});
    SDLite_Sprite_Manager *manager = SDLite_Create_SpriteManager(16, 16);


    MIX_Audio *audio = MIX_LoadAudio(audio_handler->mixer, "SDK1/assets/sample_mp3.mp3", true);
    if(!audio){
        printf("audio failed to laod\n");
        return 1;
    }
    SDLite_Audio_SetTrackAudio(audio_handler, 0, audio); 
    SDLite_Audio_SetTrackProp(audio_handler, 0, MIX_PROP_PLAY_MAX_MILLISECONDS_NUMBER, 10000);

    // goat player
    SDLite_Sprite *player = SDLite_Create_AnimatedSprite(display, TEXTURE_PATH_COOL, (SDL_FPoint){100, 0}, (SDL_FRect){18, 16, 13, 16});
    if(!player){
        SDL_Log("Error loading player: %s\n", SDL_GetError());
        return 1;
    }

    // boilerplate stuff for animations
    SDLite_Sprite_AllocAnimation(player, MAX_ANIMATIONS);
    SDL_FRect frames[] = {
        {18, 16, 13, 16},
        {33, 16, 14, 16},
        {49, 16, 13, 16},
        {65, 16, 13, 16},
        {81, 16, 14, 16}
    };
    uint16_t num_frames = SDLite_GET_ANIMATION_FRAMES(frames);
    SDLite_Sprite_AddAnimation(player, frames, num_frames, num_frames, IDLE_ANIMATION);
    SDLite_Sprite_SetLoopAnimation(player, IDLE_ANIMATION, true);
    SDLite_Sprite_EnableAnimation(player, IDLE_ANIMATION, true);
    // player->flip_mode = SDL_FLIP_HORIZONTAL;

    
    SDLite_Sprite *square = SDLite_Create_StaticSprite(display, TEXTURE_PATH_BLUE, (SDL_FPoint){10.0f, 0.0f}, (SDL_FRect){0.0f, 0.0f, 400.0f, 400.0f});
    if(!square){
        SDL_Log("Error loading square: %s\n", SDL_GetError());
        return 1;
    } 

    SDLite_Sprite_UpdateScale(player, 8.0f);
    SDL_SetTextureScaleMode(SDLite_Sprite_GetTexture(player), SDL_SCALEMODE_NEAREST);

    

    SDLite_Sprite *rectangle = SDLite_Create_RectSprite((SDL_FRect){350, 0, 150, 150}, (SDL_Color){255, 0, 0, 0}, true);

    if(!rectangle)
        return 1;

    if(!text){
        return 1;
    }


    // testing with these rects
    SDL_FRect a = {0.0f, 0.0f, 10.0f, 10.0f};
    SDL_FRect b = {0.0f, 9.0f, 10.0f, 10.0f};
    SDL_FPoint point = {1.0f, 10.0f};

    if(SDLite_Collision_RectPoint(&b, &point)){
        printf("rectangle and point are colliding\n");
    }

    if(SDLite_Collision_Rect(&a, &b)){
        printf("The rectangles are colliding\n");
    } else{
        printf("The rectangles aren't colliding\n");
    }

    // didn't feel like making all the switch statements
    switch(SDLite_Collision_RectDir(&a, &b)){

        case(SDLite_COLLISION_UP):
            printf("colliding on top\n");
            break;
        
        case(SDLite_COLLISION_DOWN):
            printf("colliding on bottom\n");
            break;

        case(SDLite_COLLISION_NONE):
            printf("not colliding\n");
            break;

        default:
            printf("some collision direction\n");
            break;
    }


    bool running = true;
    SDL_Event e;



    while(running){

        while(SDL_PollEvent(&e)){

            if(e.type == SDL_EVENT_QUIT){
                running = false;
            }
                
        }

        if(SDLite_Keyboard_JustPressed(input, SDL_SCANCODE_ESCAPE)){
            running = false;
        }

        if(SDLite_Keyboard_JustPressed(input, SDL_SCANCODE_UP)){
            SDLite_Audio_PlayTrack(audio_handler, 0);
        }
        if(SDLite_Keyboard_JustPressed(input, SDL_SCANCODE_DOWN)){
            SDLite_Audio_StopTrack(audio_handler, 0, 24000);
        }


        if(SDLite_Keyboard_JustPressed(input, SDL_SCANCODE_1)){
            time->fps_limit = 10.0f;
        }
        if(SDLite_Keyboard_JustPressed(input, SDL_SCANCODE_2)){
            time->fps_limit = 144.0f;
        }
        if(SDLite_Keyboard_JustPressed(input, SDL_SCANCODE_3)){
            time->fps_limit = 512.0f;
        }


        if(time->fps_updated)
            update_text(text, time->fps);
         

        SDLite_DisplayClear(display);

        SDLite_SpriteManager_QueueSprite(manager, player, 1); 
        SDLite_SpriteManager_QueueSprite(manager, square, 0); 
        SDLite_SpriteManager_QueueSprite(manager, rectangle, 0);
       
        SDLite_Render_SpriteManager(display, manager);
        SDLite_Render_Text(text);

        SDLite_DisplayPresent(display);

        SDLite_Sprite_UpdateAnimation(player, time);
        SDLite_TimeFunctions(time);
        SDLite_Update_Previous_Inputs(input);
    }

    SDLite_DestroyDisplay(display);
    display = NULL;
    SDLite_DestroyInput(input);
    input = NULL;
    SDLite_DestroyTime(time);
    time = NULL;
    SDLite_DestroyText(text);
    text = NULL;
    SDLite_Destroy_SpriteManager(manager);
    manager = NULL;
    SDLite_Destroy_AudioHandler(audio_handler);
    audio_handler = NULL;
    SDLite_DestroySprite(player);
    player = NULL;
    SDLite_DestroySprite(square);
    square = NULL;
    SDLite_DestroySprite(rectangle);
    rectangle = NULL;

    SDLite_Quit();
    
    return 0;
}
