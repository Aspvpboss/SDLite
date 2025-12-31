#include "SDK.h"
#include "sprite/SDK_sprite.h"

#define TEXTURE_PATH_BLUE "./assets/blue.bmp"
#define TEXTURE_PATH_COOL "./assets/char_spritesheet.png"




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


    SDK_Sprite *player = SDK_Create_StaticSprite(display, "assets/char_spritesheet.png", (SDL_FPoint){100, 0}, (SDL_FRect){18, 16, 13, 16});
    if(!player){
        SDL_Log("Error loading player: %s\n", SDL_GetError());
        return 1;
    }

    SDK_Sprite_UpdateScale(player, 8.0f);
    SDL_SetTextureScaleMode(SDK_Sprite_GetTexture(player), SDL_SCALEMODE_NEAREST);


    if(!text){
        printf("Kys!\n");
        return 1;
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


        SDK_Render_Sprite(display, player);
        SDK_Render_Text(text);


        SDL_RenderPresent(display->renderer);

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
