#include "sprite/SDK_sprite_manager.h"


typedef struct{

    SDK_Sprite **sprites;
    uint64_t amount_sprites;

} SDK_Render_Layer;


typedef struct{

    SDK_Render_Layer *layers;
    uint64_t max_z_depth;
    uint64_t max_sprites;

} Sprite_Manager_Data;


SDK_Sprite_Manager* SDK_Create_SpriteManager(uint64_t max_z_depth, uint64_t max_sprites){

    if(!max_z_depth || !max_sprites)
        return NULL;

    SDK_Sprite_Manager *manager = t_malloc(sizeof(SDK_Sprite_Manager));
    if(!manager)
        return NULL;
    
    manager->data = t_malloc(sizeof(Sprite_Manager_Data));
    if(!manager->data){
        t_free(manager);
        return NULL;
    }
    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;
    
    data->layers = t_malloc(sizeof(SDK_Render_Layer) * max_z_depth);
    if(!data->layers){
        t_free(manager->data);
        t_free(manager);
        return NULL;
    }

    data->max_z_depth = max_z_depth;
    data->max_sprites = max_sprites;

    SDK_Render_Layer *layers = data->layers;

    for(uint64_t i = 0; i < max_z_depth; i++){
        layers[i].sprites = t_malloc(sizeof(SDK_Sprite*) * max_sprites);

        if(!layers[i].sprites){
            for(uint64_t a = 0; a < i; a++)
                t_free(layers[a].sprites);

            t_free(layers);
            t_free(manager->data);
            t_free(manager);

            return NULL;
        }

        layers[i].amount_sprites = 0;

    }
    
    return manager;
}


int SDK_SpriteManager_QueueSprite(SDK_Sprite_Manager *manager, SDK_Sprite *sprite, uint64_t z_depth){

    if(!manager || !sprite) return 1;

    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;
    
    if(z_depth >= data->max_z_depth) return 1;


    SDK_Render_Layer *layer = &data->layers[z_depth];
    if(layer->amount_sprites >= data->max_sprites) 
        return 1;

    layer->sprites[layer->amount_sprites] = sprite;
    layer->amount_sprites++;

    return 0;
}



int SDK_Render_SpriteManager(SDK_Display *display, SDK_Sprite_Manager *manager){

    if(!display || !manager)
        return 1;
    
    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;

    for(uint64_t i = 0; i < data->max_z_depth; i++){

        SDK_Render_Layer *layer = &data->layers[i];

        if(layer->amount_sprites == 0)
            continue;

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

    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;

    for(uint64_t i = 0; i < data->max_z_depth; i++){

        t_free(data->layers[i].sprites);

    }

    t_free(data->layers);
    t_free(data);
    t_free(manager);

}


