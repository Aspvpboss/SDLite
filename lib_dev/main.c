#include "SDK.h"
#include "sprite/SDK_sprite.h"

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


    SDK_Display *display = SDK_CreateDisplay("SDK window", 800, 800, SDL_WINDOW_MAXIMIZED);
    SDK_Time *time = SDK_CreateTime(144);
    SDK_Input *input = SDK_CreateInput();
    SDK_Text *text = SDK_CreateText(display, NULL, 20, 5, 5, (SDL_Color){255, 255, 255, 255});
    SDK_Sprite_Manager *manager = SDK_Create_SpriteManager(16, 16);


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


    SDK_Sprite_UpdateScale(player, 8.0f);
    SDL_SetTextureScaleMode(SDK_Sprite_GetTexture(player), SDL_SCALEMODE_NEAREST);

    
    if(!text){
        printf("Kys!\n");
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

        if(time->fps_updated)
            update_text(text, time->fps);


        SDL_RenderClear(display->renderer);

        
        if(SDK_Render_Sprite(display, player)){
            running = false;
        }
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

    
    SDK_Quit();
    
    return 0;
}
