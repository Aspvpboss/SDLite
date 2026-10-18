cmake_minimum_required(VERSION 3.24)

project(example-blank VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


find_package(SDLite REQUIRED)

add_executable(example-blank-cpp
    src/init.cpp 
    src/iterate.cpp 
    src/render.cpp 
    src/quit.cpp 
    src/update.cpp 
    src/sdl_events.cpp 
    src/frame_events.cpp 
)

target_include_directories(example-blank-cpp PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
)


target_compile_definitions(example-blank-cpp
    PRIVATE
        TRACK_ALLOCATIONS
)

target_link_libraries(example-blank-cpp 
    SDLite::debugSDLite
)