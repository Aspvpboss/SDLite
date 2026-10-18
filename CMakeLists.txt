cmake_minimum_required(VERSION 3.24)

project(debugSDLite VERSION 1.3.0 LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build static libraries by default" FORCE)
set(SDL_SHARED OFF CACHE BOOL "Disable SDL shared library build" FORCE)
set(SDL_STATIC ON  CACHE BOOL "Enable SDL static library build" FORCE)

include(FetchContent)
FetchContent_Declare(
    SDL3
    GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
    GIT_TAG release-3.4.18 # tag pulling from
    OVERRIDE_FIND_PACKAGE
)

# makes SDL3 available
FetchContent_MakeAvailable(SDL3)


FetchContent_Declare(
    SDL3_mixer
    GIT_REPOSITORY https://github.com/libsdl-org/SDL_mixer.git
    GIT_TAG release-3.2.4
)
FetchContent_MakeAvailable(SDL3_mixer)

# sdl_image config
set(SDLIMAGE_SHARED OFF CACHE BOOL "Disable shared SDL_image" FORCE)
set(SDLIMAGE_STATIC ON  CACHE BOOL "Enable static SDL_image" FORCE)
set(SDLIMAGE_VENDORED ON CACHE BOOL "Use vendored libraries for SDL_image" FORCE)
FetchContent_Declare(
    SDL3_image
    GIT_REPOSITORY https://github.com/libsdl-org/SDL_image.git    
    GIT_TAG release-3.4.8
)
FetchContent_MakeAvailable(SDL3_image)

# sdl_ttf config
set(SDLTTF_SHARED OFF CACHE BOOL "Disable shared SDL_ttf" FORCE)
set(SDLTTF_STATIC ON  CACHE BOOL "Enable static SDL_ttf" FORCE)
set(SDLTTF_VENDORED ON CACHE BOOL "Use vendored libraries for SDL_ttf" FORCE)
FetchContent_Declare(
    SDL3_ttf    
    GIT_REPOSITORY https://github.com/libsdl-org/SDL_ttf.git
    GIT_TAG release-3.2.2
)
FetchContent_MakeAvailable(SDL3_ttf)

find_package(Threads REQUIRED)

set(SDLITE_SOURCES
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

# ================= debugSDLite (unoptimized + memory tracking) =================
add_library(debugSDLite SHARED ${SDLITE_SOURCES})

target_include_directories(debugSDLite PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
)

target_compile_definitions(debugSDLite
    PRIVATE
        TRACK_ALLOCATIONS
        DLL_EXPORTS
        MEMTRACK_BUILD_DLL
    PUBLIC
        MEMTRACK_DLL
)

if(MSVC)
    target_compile_options(debugSDLite PRIVATE /Od /Zi)
else()
    target_compile_options(debugSDLite PRIVATE -O0 -g)
endif()

target_link_libraries(debugSDLite PUBLIC
    SDL3::SDL3-static
    SDL3_image::SDL3_image-static
    SDL3_mixer::SDL3_mixer-static
    SDL3_ttf::SDL3_ttf-static
    Threads::Threads
)

# ================= SDLite (optimized release build) =================
add_library(SDLite SHARED ${SDLITE_SOURCES})

target_include_directories(SDLite PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
)

target_compile_definitions(SDLite
    PRIVATE
        STDLIB_ALLOCATIONS
        NDEBUG
        DLL_EXPORTS
        MEMTRACK_BUILD_DLL
    PUBLIC
        MEMTRACK_DLL
)

if(MSVC)
    target_compile_options(SDLite PRIVATE /O2)
else()
    target_compile_options(SDLite PRIVATE -O3)
endif()

target_link_libraries(SDLite PUBLIC
    SDL3::SDL3-static
    SDL3_image::SDL3_image-static
    SDL3_mixer::SDL3_mixer-static
    SDL3_ttf::SDL3_ttf-static
    Threads::Threads
)


include(CMakePackageConfigHelpers)

configure_package_config_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/MyPackageConfig.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/MyPackageConfig.cmake"
    INSTALL_DESTINATION lib/cmake/MyPackage
)


add_subdirectory(tests)
