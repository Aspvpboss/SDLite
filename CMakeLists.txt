cmake_minimum_required(VERSION 3.24)

project(debugSDLite LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(SDL_SHARED OFF CACHE BOOL "Disable SDL shared library build" FORCE)
set(SDL_STATIC ON  CACHE BOOL "Enable SDL static library build" FORCE)

include(FetchContent)
FetchContent_Declare(
    SDL3
    GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
    GIT_TAG        release-3.4.18 # tag pulling from
    EXCLUDE_FROM_ALL             # prevents compiling unused parts of the src
)

# 3. Make SDL3 available to your build tree
FetchContent_MakeAvailable(SDL3)

add_library(debugSDLite SHARED 
    src/MemTrack_imp.c 
    src/SDLite_audio.c 
    src/SDLite_collision.c 
    src/SDLite_display.c 
    src/SDLite_init.c 
    src/SDLite_input.c
    src/SDLite_text.c 
    src/SDLite_texture.c 
    src/SDLite_time.c 
    src/SDLite_version.c
    src/sprite/SDLite_animated_sprite.c
    src/sprite/SDLite_rect_sprite.c
    src/sprite/SDLite_sprite_manager.c
    src/sprite/SDLite_sprite.c
)


target_include_directories(debugSDLite PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/SDLite>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
)

target_compile_definitions(debugSDLite PRIVATE TRACK_ALLOCATIONS)
target_link_libraries(debugSDLite PUBLIC
    SDL3::SDL3-static
)