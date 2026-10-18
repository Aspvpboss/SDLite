cmake_minimum_required(VERSION 3.24)

project(debugSDLite VERSION 1.3.0 LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_C_VISIBILITY_PRESET hidden)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN ON)

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


set(SDLMIXER_SHARED OFF CACHE BOOL "Disable shared SDL_mixer" FORCE)
set(SDLMIXER_STATIC ON  CACHE BOOL "Enable static SDL_mixer" FORCE)
set(SDLMIXER_DEPS_SHARED OFF CACHE BOOL "Link vendored dependencies statically into SDL_mixer" FORCE)
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
set(SDLIMAGE_DEPS_SHARED OFF CACHE BOOL "Link vendored dependencies statically into SDL_image" FORCE)
set(SDLIMAGE_AVIF_SHARED OFF CACHE BOOL "Link libavif statically" FORCE)
set(SDLIMAGE_PNG_SHARED OFF CACHE BOOL "Link libpng statically" FORCE)
set(SDLIMAGE_TIF_SHARED OFF CACHE BOOL "Link libtiff statically" FORCE)
set(SDLIMAGE_WEBP_SHARED OFF CACHE BOOL "Link libwebp statically" FORCE)
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

if(WIN32)
    # Place .dll and .exe files in the same directory on Windows so test executables find SDLite.dll
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")

    # Ensure SDL3 and satellite functions also receive __declspec(dllexport) when linked into SDLite.dll
    target_compile_definitions(SDL3-static PRIVATE DLL_EXPORT)
    target_compile_definitions(SDL3_image-static PRIVATE DLL_EXPORT)
    target_compile_definitions(SDL3_mixer-static PRIVATE DLL_EXPORT)
    target_compile_definitions(SDL3_ttf-static PRIVATE DLL_EXPORT)
endif()

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

target_include_directories(debugSDLite
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_BINARY_DIR}/include-revision>
        $<BUILD_INTERFACE:${sdl3_image_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_mixer_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_ttf_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
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
    target_compile_options(debugSDLite PRIVATE /Od /Zi /W4)
else()
    target_compile_options(debugSDLite PRIVATE -O0 -g -Wall -Wpedantic)
endif()

target_link_libraries(debugSDLite
    PRIVATE
        "$<LINK_LIBRARY:WHOLE_ARCHIVE,SDL3::SDL3-static,SDL3_image::SDL3_image-static,SDL3_mixer::SDL3_mixer-static,SDL3_ttf::SDL3_ttf-static>"
)

# ================= SDLite (optimized release build) =================
add_library(SDLite SHARED ${SDLITE_SOURCES})

target_include_directories(SDLite
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_BINARY_DIR}/include-revision>
        $<BUILD_INTERFACE:${sdl3_image_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_mixer_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${sdl3_ttf_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
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
    target_compile_options(SDLite PRIVATE /O2 /W4)
else()
    target_compile_options(SDLite PRIVATE -O3 -Wall -Wpedantic)
endif()

target_link_libraries(SDLite
    PRIVATE
        "$<LINK_LIBRARY:WHOLE_ARCHIVE,SDL3::SDL3-static,SDL3_image::SDL3_image-static,SDL3_mixer::SDL3_mixer-static,SDL3_ttf::SDL3_ttf-static>"
)


# ================= Installation & Packaging =================
include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

# 1. Install SDLite and debugSDLite shared libraries
install(TARGETS SDLite debugSDLite
    EXPORT SDLiteTargets
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

# 2. Install CMake export targets & package config files (enables find_package(SDLite))
install(EXPORT SDLiteTargets
    FILE SDLiteTargets.cmake
    NAMESPACE SDLite::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/SDLite
)

configure_package_config_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/SDLiteConfig.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/SDLiteConfig.cmake"
    INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/SDLite
)

write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/SDLiteConfigVersion.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY SameMajorVersion
)

install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/SDLiteConfig.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/SDLiteConfigVersion.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/SDLite
)

# 3. Install SDLite headers + SDL3/SDL3_image/SDL3_mixer/SDL3_ttf headers
install(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/include/SDLite"
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
install(DIRECTORY "${sdl3_SOURCE_DIR}/include/SDL3"
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
install(DIRECTORY "${sdl3_image_SOURCE_DIR}/include/SDL3_image"
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
install(DIRECTORY "${sdl3_mixer_SOURCE_DIR}/include/SDL3_mixer"
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
install(DIRECTORY "${sdl3_ttf_SOURCE_DIR}/include/SDL3_ttf"
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

# 4. Install default assets, README, and Licenses
install(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/assets/default.ttf"
    DESTINATION ${CMAKE_INSTALL_DATADIR}/SDLite/assets
)
install(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt"
    "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE_SDL.txt"
    "${CMAKE_CURRENT_SOURCE_DIR}/README.md"
    DESTINATION ${CMAKE_INSTALL_DATADIR}/SDLite
)

# 5. CPack configuration to build .tar.gz / .zip release archives
set(CPACK_PACKAGE_NAME "SDLite")
set(CPACK_PACKAGE_VENDOR "Benjamin Vaughan")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SDLite - Lightweight SDL3 Wrapper Framework")
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt")
set(CPACK_RESOURCE_FILE_README "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
if(WIN32)
    set(CPACK_GENERATOR "ZIP")
else()
    set(CPACK_GENERATOR "TGZ;ZIP")
endif()
include(CPack)


# Run tests
enable_testing()
add_subdirectory(tests)

