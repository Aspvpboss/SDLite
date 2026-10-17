add_executable(bad_main
    main.c
)

target_link_libraries(bad_main PRIVATE debugSDLite)

add_executable(bad_main_cpp
    main.cpp
)

target_link_libraries(bad_main_cpp PRIVATE debugSDLite)
