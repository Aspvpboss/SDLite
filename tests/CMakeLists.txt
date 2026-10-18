add_executable(bad_main
    main.c
)

target_link_libraries(bad_main PRIVATE debugSDLite)

add_executable(bad_main_cpp
    main.cpp
)

target_link_libraries(bad_main_cpp PRIVATE debugSDLite)

add_executable(test_debugSDLite
    test_suite.c
)
target_compile_definitions(test_debugSDLite PRIVATE TRACK_ALLOCATIONS)
target_link_libraries(test_debugSDLite PRIVATE debugSDLite)

add_executable(test_SDLite
    test_suite.c
)
target_compile_definitions(test_SDLite PRIVATE STDLIB_ALLOCATIONS)
target_link_libraries(test_SDLite PRIVATE SDLite)

if(UNIX)
    target_link_libraries(test_debugSDLite PRIVATE m)
    target_link_libraries(test_SDLite PRIVATE m)
endif()

