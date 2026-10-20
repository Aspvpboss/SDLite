/*
* Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#include "SDLite/sprite/SDLite_sprite_manager.h"


struct SDLite_Sprite_Manager{

    void *data;

};



typedef struct{

    SDLite_Sprite **sprites;
    uint64_t amount_sprites;

} SDLite_Render_Layer;


typedef struct{

    SDLite_Render_Layer *layers;
    uint64_t max_z_depth;
    uint64_t max_sprites;

} Sprite_Manager_Data;


SDLite_Sprite_Manager* SDLite_Create_SpriteManager(uint64_t max_z_depth, uint64_t max_sprites){

    if(!max_z_depth || !max_sprites){
        SDLite_SetError("max_z_depth and max_sprites cannot be 0");
        return NULL;
    }

    SDLite_Sprite_Manager *manager = t_calloc(1, sizeof(SDLite_Sprite_Manager));
    if(!manager){
        SDLite_SetError("Failed to allocate sprite manager");
        return NULL;
    }

    manager->data = t_calloc(1, sizeof(Sprite_Manager_Data));
    if(!manager->data){
        SDLite_SetError("Failed to allocate sprite manager data");
        t_free(manager);
        return NULL;
    }
    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;
    
    data->layers = t_calloc(max_z_depth, sizeof(SDLite_Render_Layer));
    if(!data->layers){
        SDLite_SetError("Failed to allocate layers");
        t_free(manager->data);
        t_free(manager);
        return NULL;
    }

    data->max_z_depth = max_z_depth;
    data->max_sprites = max_sprites;

    SDLite_Render_Layer *layers = data->layers;

    for(uint64_t i = 0; i < max_z_depth; i++){
        layers[i].sprites = t_calloc(max_sprites, sizeof(SDLite_Sprite*));

        if(!layers[i].sprites){
            SDLite_SetError("Failed to allocate sprite layer");
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


int SDLite_SpriteManager_QueueSprite(SDLite_Sprite_Manager *manager, SDLite_Sprite *sprite, uint64_t z_depth){

    if(!manager){
        SDLite_SetError("Sprite manager is NULL");
        return 1;
    }
    if(!sprite){
        SDLite_SetError("Sprite is NULL");
        return 1;
    }

    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;
    
    if(z_depth >= data->max_z_depth){
        SDLite_SetError("z_depth %llu out of bounds", (unsigned long long)z_depth);
        return 1;
    }


    SDLite_Render_Layer *layer = &data->layers[z_depth];
    if(layer->amount_sprites >= data->max_sprites){
        SDLite_SetError("Sprite manager layer capacity exceeded");
        return 1;
    }

    layer->sprites[layer->amount_sprites] = sprite;
    layer->amount_sprites++;

    return 0;
}



int SDLite_Render_SpriteManager(const SDLite_Display *display, SDLite_Sprite_Manager *manager){

    if(!display){
        SDLite_SetError("Display is NULL");
        return 1;
    }
    if(!manager){
        SDLite_SetError("Sprite manager is NULL");
        return 1;
    }
    
    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;
    bool result = false;

    for(uint64_t i = 0; i < data->max_z_depth; i++){

        SDLite_Render_Layer *layer = &data->layers[i];

        if(layer->amount_sprites == 0)
            continue;

        SDLite_Sprite **sprites = layer->sprites;

        for(uint64_t a = 0; a < layer->amount_sprites; a++){

            result |= (bool)SDLite_Render_Sprite(display, sprites[a]);
        
        }

        layer->amount_sprites = 0;

    }

    return result;
}




void SDLite_Destroy_SpriteManager(SDLite_Sprite_Manager *manager){

    if(!manager) return;

    Sprite_Manager_Data *data = (Sprite_Manager_Data*)manager->data;

    for(uint64_t i = 0; i < data->max_z_depth; i++){

        t_free(data->layers[i].sprites);

    }

    t_free(data->layers);
    t_free(data);
    t_free(manager);

}


