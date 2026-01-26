/*
 * Copyright (c) 2026 Benjamin Vaughan
 *
 * Licensed under the MIT License.
 * See the LICENSE file in the project root for license information.
*/

#ifndef SDK_SPRITE_MANAGER_H
#define SDK_SPRITE_MANAGER_H


#ifdef __cplusplus
extern "C" {
#endif



#include "SDK_sprite.h"
#include "../common_libs.h"



typedef struct{

    void *const data;

} SDK_Sprite_Manager;


/*
    Creates a SDK_Sprite_Manager with the specified attributes

    SDK_Sprite_Manager needs to be freed by SDK_Destroy_SpriteManager()

    SDK_Sprite_Manager allows for rendering sprites is certain orders,
    it does this by using z_depth

    returns SDK_Sprite_Manager* for success, returns NULL for failure
    call SDL_GetError() for more info
*/
SDK1_API SDK_Sprite_Manager* SDK_Create_SpriteManager(uint64_t max_z_depth, uint64_t max_sprites);

/*
    Frees a SDK_Sprite_Manager

    Will return early if SDK_Sprite_Manager is NULL
*/
SDK1_API void SDK_Destroy_SpriteManager(SDK_Sprite_Manager *manager);

/*
    Queues a sprite for rendering at the specified Z depth.

    The sprite is added to the sprite manager’s per-frame render queue and
    will be rendered when SDK_Render_SpriteManager() is called. Sprites with
    higher Z depth values are rendered after lower ones.

    This function does not take ownership of the sprite and performs no
    rendering itself. The queue is cleared after rendering.

    returns 0 for success, returns 1 for failure
*/
SDK1_API int SDK_SpriteManager_QueueSprite(SDK_Sprite_Manager *manager, SDK_Sprite *sprite, uint64_t z_depth);

/*
    Renders all the sprites within each z_layer contained in SDK_Sprite_Manager

    returns 0 for success, returns 1 for failure
    call SDL_GetError() for more info
*/
SDK1_API int SDK_Render_SpriteManager(SDK_Display *display, SDK_Sprite_Manager *manager);


#ifdef __cplusplus
}
#endif

#endif


