#include "sprite/SDK_sprite_manager.h"


typedef struct{

    SDK_Sprite **sprites;
    uint16_t amount_sprites;

} SDK_Render_Layer;

SDK_Sprite_Manager* SDK_Create_SpriteManager(uint64_t max_z_depth, uint64_t max_sprites){

    if(!max_z_depth || !max_sprites)
        return NULL;

    SDK_Sprite_Manager *manager = t_malloc(sizeof(SDK_Sprite_Manager));
    if(!manager)
        return NULL;
    
    manager->data = t_malloc(sizeof(SDK_Render_Layer) * max_z_depth);
    SDK_Render_Layer *layers = (SDK_Render_Layer*)manager->data;

    if(!layers){
        t_free(manager);
        return NULL;
    }

    manager->max_z_depth = max_z_depth;
    manager->max_sprites = max_sprites;

    for(int i = 0; i < max_z_depth; i++){
        layers[i].sprites = NULL;
        layers[i].sprites = t_malloc(sizeof(SDK_Sprite*) * max_sprites);

        if(!layers[i].sprites){
            for(int a = 0; a < i; a++)
                t_free(layers[a].sprites);

            t_free(layers);
            t_free(manager);

            return NULL;
        }

        layers[i].amount_sprites = 0;

    }

    return manager;
}




int SDK_Render_SpriteManager(SDK_Display *display, SDK_Sprite_Manager *manager){

    if(!display || !manager)
        return 1;
    
    SDK_Render_Layer *layers = (SDK_Render_Layer*)manager->data;

    for(int i = 0; i < manager->max_z_depth; i++){

        SDK_Render_Layer *layer = &layers[i];
        SDK_Sprite **sprites = layer->sprites;

        for(int a = 0; a < layer->amount_sprites; a++){
            SDK_Render_Sprite(display, sprites[a]);
        }

        layer->amount_sprites = 0;

    }

    return 0;
}




void SDK_Destroy_SpriteManager(SDK_Sprite_Manager *manager){

    if(!manager) return;

    SDK_Render_Layer *layers = (SDK_Render_Layer*)manager->data;

    for(int i = 0; i < manager->max_z_depth; i++){

        t_free(layers[i].sprites);

    }


    t_free(layers);
    t_free(manager);

}
