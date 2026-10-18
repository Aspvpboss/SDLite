cmake_minimum_required(VERSION 3.24)

project(pong-sdlite VERSION 1.0 LANGUAGES C)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


find_package(SDLite REQUIRED)

add_executable(pong-sdlite
    src/init.c 
    src/iterate.c 
    src/render.c 
    src/quit.c 
    src/update.c 
    src/sdl_events.c 
    src/gamestate_init.c 
    src/frame_events.c 
)

target_include_directories(pong-sdlite PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
)


target_compile_definitions(pong-sdlite
    PRIVATE
        TRACK_ALLOCATIONS
)

target_link_libraries(pong-sdlite 
    SDLite::debugSDLite
)