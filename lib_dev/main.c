// this is the test file for the framework
// the entire file is just bad practice, but idc

#include "SDK.h"

#define TEXTURE_PATH_BLUE "./assets/blue.bmp"
#define TEXTURE_PATH_COOL "./assets/char_spritesheet.png"


typedef enum{

    IDLE_ANIMATION,
    MAX_ANIMATIONS

} Player_Animations;




void update_text(SDK_Text *text, double fps){

    char fps_text[40];

    snprintf(fps_text, sizeof(fps_text), "FPS: %.1f", fps);

    SDK_Text_UpdateString(text, fps_text);

}


int thread_func(void *ptr){
    t_malloc(10);
    return 0;
}


int main(){

    if(SDK_Init(NULL, NULL, true, true)){
        return 1;
    }



    void *data = NULL;
    SDL_Thread *thread = SDL_CreateThread(thread_func, "function", data);
    int result = 0;
    SDL_WaitThread(thread, &result);

    int macro, minor, micro;
    SDK_Version_GetNumbers(&macro, &minor, &micro);
    printf("SDK version: %d.%d.%d\n", macro, minor, micro);


    SDK_Audio_Handler *audio_handler = SDK_Create_AudioHandler(4, 1.0f);
    SDK_Display *display = SDK_CreateDisplay("SDK window", 800, 800, SDL_WINDOW_MAXIMIZED);
    SDK_Time *time = SDK_CreateTime(144);
    SDK_Input *input = SDK_CreateInput();
    SDK_Text *text = SDK_CreateText(display, NULL, 20, 5, 5, (SDL_Color){255, 255, 255, 255});
    SDK_Sprite_Manager *manager = SDK_Create_SpriteManager(16, 16);

    

    MIX_Audio *audio = MIX_LoadAudio(audio_handler->mixer, "SDK1/assets/sample_mp3.mp3", true);
    if(!audio){
        printf("audio failed to laod\n");
        return 1;
    }
    SDK_Audio_SetTrackAudio(audio_handler, 0, audio); 
    SDK_Audio_SetTrackProp(audio_handler, 0, MIX_PROP_PLAY_MAX_MILLISECONDS_NUMBER, 10000);

    // goat player
    SDK_Sprite *player = SDK_Create_AnimatedSprite(display, TEXTURE_PATH_COOL, (SDL_FPoint){100, 0}, (SDL_FRect){18, 16, 13, 16});
    if(!player){
        SDL_Log("Error loading player: %s\n", SDL_GetError());
        return 1;
    }

    // boilerplate stuff for animations
    SDK_Sprite_AllocAnimation(player, MAX_ANIMATIONS);
    SDL_FRect frames[] = {
        {18, 16, 13, 16},
        {33, 16, 14, 16},
        {49, 16, 13, 16},
        {65, 16, 13, 16},
        {81, 16, 14, 16}
    };
    uint16_t num_frames = SDK_GET_ANIMATION_FRAMES(frames);
    SDK_Sprite_AddAnimation(player, frames, num_frames, num_frames, IDLE_ANIMATION);
    SDK_Sprite_SetLoopAnimation(player, IDLE_ANIMATION, true);
    SDK_Sprite_EnableAnimation(player, IDLE_ANIMATION, true);
    // player->flip_mode = SDL_FLIP_HORIZONTAL;

    
    SDK_Sprite *square = SDK_Create_StaticSprite(display, TEXTURE_PATH_BLUE, (SDL_FPoint){10.0f, 0.0f}, (SDL_FRect){0.0f, 0.0f, 400.0f, 400.0f});
    if(!square){
        SDL_Log("Error loading square: %s\n", SDL_GetError());
        return 1;
    } 

    SDK_Sprite_UpdateScale(player, 8.0f);
    SDL_SetTextureScaleMode(SDK_Sprite_GetTexture(player), SDL_SCALEMODE_NEAREST);

    

    SDK_Sprite *rectangle = SDK_Create_RectSprite((SDL_FRect){350, 0, 150, 150}, (SDL_Color){255, 0, 0, 0}, true);

    if(!rectangle)
        return 1;

    if(!text){
        return 1;
    }


    // testing with these rects
    SDL_FRect a = {0.0f, 0.0f, 10.0f, 10.0f};
    SDL_FRect b = {0.0f, 9.0f, 10.0f, 10.0f};
    SDL_FPoint point = {1.0f, 10.0f};

    if(SDK_Collision_RectPoint(&b, &point)){
        printf("rectangle and point are colliding\n");
    }

    if(SDK_Collision_Rect(&a, &b)){
        printf("The rectangles are colliding\n");
    } else{
        printf("The rectangles aren't colliding\n");
    }

    // didn't feel like making all the switch statements
    switch(SDK_Collision_RectDir(&a, &b)){

        case(SDK_COLLISION_UP):
            printf("colliding on top\n");
            break;
        
        case(SDK_COLLISION_DOWN):
            printf("colliding on bottom\n");
            break;

        case(SDK_COLLISION_NONE):
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

        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_ESCAPE)){
            running = false;
        }

        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_UP)){
            SDK_Audio_PlayTrack(audio_handler, 0);
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_DOWN)){
            SDK_Audio_StopTrack(audio_handler, 0, 24000);
        }


        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_1)){
            time->fps_limit = 10.0f;
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_2)){
            time->fps_limit = 144.0f;
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_3)){
            time->fps_limit = 512.0f;
        }


        if(time->fps_updated)
            update_text(text, time->fps);
         

        SDK_DisplayClear(display);

        SDK_SpriteManager_QueueSprite(manager, player, 1); 
        SDK_SpriteManager_QueueSprite(manager, square, 0); 
        SDK_SpriteManager_QueueSprite(manager, rectangle, 0);
       
        SDK_Render_SpriteManager(display, manager);
        SDK_Render_Text(text);

        SDK_DisplayPresent(display);

        SDK_Sprite_UpdateAnimation(player, time);
        SDK_TimeFunctions(time);
        SDK_Update_Previous_Inputs(input);
    }

    SDK_DestroyDisplay(display);
    display = NULL;
    SDK_DestroyInput(input);
    input = NULL;
    SDK_DestroyTime(time);
    time = NULL;
    SDK_DestroyText(text);
    text = NULL;
    SDK_Destroy_SpriteManager(manager);
    manager = NULL;
    SDK_Destroy_AudioHandler(audio_handler);
    audio_handler = NULL;
    SDK_DestroySprite(player);
    player = NULL;
    SDK_DestroySprite(square);
    square = NULL;
    SDK_DestroySprite(rectangle);
    rectangle = NULL;

    SDK_Quit();
    
    return 0;
}
