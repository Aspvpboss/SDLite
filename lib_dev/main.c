#include "SDK.h"
#include "SDL3/SDL_properties.h"

#define TEXTURE_PATH_BLUE "./assets/blue.bmp"
#define TEXTURE_PATH_COOL "./assets/char_spritesheet.png"


typedef enum{

    IDLE_ANIMATION,
    MAX_ANIMATIONS

} Player_Animations;




void update_text(SDK_Text *text, double fps){

    char fps_text[40];

    snprintf(fps_text, sizeof(fps_text), "FPS: %.2f", fps);

    SDK_Text_UpdateString(text, fps_text);

}



int main(){

    if(SDK_Init(NULL, NULL, true, true, true)){
        return 1;
    }


    MIX_Mixer *mixer = MIX_CreateMixerDevice(SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, NULL);
    if(!mixer){
        printf("mixer failed to load\n");
        return 1;
    }
    MIX_Audio *audio = MIX_LoadAudio(mixer, "SDK1/assets/sample_mp3.mp3", true);
    if(!audio){
        printf("audio failed to laod\n");
        return 1;
    }
    
    MIX_Track *track = MIX_CreateTrack(mixer);

    MIX_SetTrackAudio(track, audio);
    SDL_PropertiesID props = SDL_CreateProperties();
    SDL_SetNumberProperty(props, MIX_PROP_PLAY_LOOPS_NUMBER, -1);
    MIX_SetTrackGain(track, 0.01);
    MIX_PlayTrack(track, props);


    SDK_Display *display = SDK_CreateDisplay("SDK window", 800, 800, SDL_WINDOW_MAXIMIZED);
    SDK_Time *time = SDK_CreateTime(144);
    SDK_Input *input = SDK_CreateInput();
    SDK_Text *text = SDK_CreateText(display, NULL, 20, 5, 5, (SDL_Color){255, 255, 255, 255});
    SDK_Sprite_Manager *manager = SDK_Create_SpriteManager(16, 16);


    SDL_Texture *test = IMG_LoadTexture(display->renderer, "assets/char_spritesheet.png");
    if(!test){
        SDL_Log("Error loading blue: %s\n", SDL_GetError());
        return 1;
    }
    


    // goat player
    SDK_Sprite *player = SDK_Create_AnimatedSprite(display, "assets/char_spritesheet.png", (SDL_FPoint){100, 0}, (SDL_FRect){18, 16, 13, 16});
    if(!player){
        SDL_Log("Error loading player: %s\n", SDL_GetError());
        return 1;
    }

    // boilerplate stuff for animations
    SDK_Sprite_AllocAnimation(player, MAX_ANIMATIONS);
    SDK_Sprite_AddAnimation(player, (SDL_FRect){18, 16, 13, 16}, 6, 5.0f, 3.0f, IDLE_ANIMATION);
    SDK_Sprite_SetLoopAnimation(player, IDLE_ANIMATION, true);
    SDK_Sprite_EnableAnimation(player, IDLE_ANIMATION, true);


    
    SDK_Sprite *square = SDK_Create_StaticSprite(display, TEXTURE_PATH_BLUE, (SDL_FPoint){10.0f, 0.0f}, (SDL_FRect){0.0f, 0.0f, 400.0f, 400.0f});
    if(!square){
        SDL_Log("Error loading square: %s\n", SDL_GetError());
        return 1;
    } 

    SDK_Sprite_UpdateScale(player, 8.0f);
    SDL_SetTextureScaleMode(SDK_Sprite_GetTexture(player), SDL_SCALEMODE_NEAREST);

    
    if(!text){
        return 1;
    }




    SDL_FRect a = {0.0f, 0.0f, 10.0f, 10.0f};
    SDL_FRect b = {0.0f, 9.0f, 10.0f, 10.0f};



    if(SDK_RectCollision(&a, &b)){
        printf("Ayo jit, these rects are lowkey touching my fellow\n");
    } else{
        printf("These hoodlums ain't touching\n");
    }

    

    switch(SDK_RectCollision_Dir(&a, &b)){

        case(SDK_COLLISION_UP):
            printf("colliding on top\n");
            break;
        
        case(SDK_COLLISION_DOWN):
            printf("colliding on bottom\n");
            break;

        case(SDK_COLLISION_NONE):
            printf("these jits ain't colliding yo\n");
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


        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_1)){
            time->fps_limit = 60.0f;
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_2)){
            time->fps_limit = 144.0f;
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_3)){
            time->fps_limit = 240.0f;
        }


        if(time->fps_updated)
            update_text(text, time->fps);


        SDL_RenderClear(display->renderer);

        SDK_SpriteManager_QueueSprite(manager, player, 1); 
        SDK_SpriteManager_QueueSprite(manager, square, 0); 

       
        SDK_Render_SpriteManager(display, manager);
        SDK_Render_Text(text);


        SDL_RenderPresent(display->renderer);


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
    SDK_DestroySprite(player);
    player = NULL;
    SDK_DestroySprite(square);
    square = NULL;
    
    SDK_Quit();
    
    return 0;
}
