# SDLite Version 1.3.0


SDLite is a lightweight cross-platform C / C++ framework built on top of **SDL3** and the **SDL3 satelite libraries** (listed below), designed to simplify common SDL workflows while providing game-oriented utilities such as sprites, animation, audio handling, timing, input helpers, and collision functions.

This framework is intended to be a **generic SDL helper library**, slightly tailored toward 2D game development.



## Patch Notes

* #### Major Refactoring
  * replaced old Makefile build system with CMake
  * created extensive unit tests
  * reorganized file structure
  * various bug fixes
* Added SDLite_Text_Font, a shared ref for fonts
* Added MemTrack v1.4.0
* Added Pong example (as a github repo in examples below)

---

## Screenshots & GIFs
<img width="800" height="533" alt="output" src="https://github.com/user-attachments/assets/ea8d70fa-389c-47b1-bebd-98ec84a3f9dc" />
<img width="800" height="672" alt="output" src="https://github.com/user-attachments/assets/1f49bbab-cc89-4e9c-ba02-7232da04c66d" />

---

## Dependencies

* CMake
* C & C++ compiler
* nasm
* any SDL3 and SDL3 sat lib deps

CMake pulls the SDL3, SDL3_image, SDL3_mixer, and SDL3_ttf source code when compiling the library

CMake then statically links those libraries into the SDLite and debugSDLite shared libraries


## Documentation

All public functions are documented in their header files.  
Additionally, the included **MemTrack** library header contains documentation for memory tracking utilities and necessary macros.

See https://github.com/Aspvpboss/MemTrack for addtional docs over MemTrack


## SDLite Builds

- **SDLite**  
  Standard release build.  
  No memory allocation tracking.  
  Intended for normal application or game builds.

- **debugSDLite**  
  Debug build with **MemTrack** memory allocation tracking enabled. Can detect memory leaks and track allocations during development.

## Prerequisites

This framework assumes you already have a basic understanding of SDL, and are comfortable with C / C++.  
Knowing how SDL works internally will make the SDLite much easier to understand and use effectively.


## Examples

- **Template Example** (in C/C++) 
  - Opens a window and displays the current FPS.
- **Pong** (in C) - https://github.com/Aspvpboss/Pong-SDLite
  - Basic game of pong, includes main menu, main loop, and win screen

---

## Building and Testing with Cmake

### Build
This builds both the debug and release version of SDLite, and packages them in the build directory
```
cmake -B build -S .
cmake --build build
```

### Run Tests
Run these after building the library
```
./build/tests/test_SDLite
./build/tests/test_debugSDLite
```

### Packaging the library
```
cd build
cpack
```

### Install System-Wide (or User-Wide)
To install system-wide on Linux (e.g. Fedora):
```bash
sudo cmake --install build
sudo ldconfig  # update dynamic linker cache for libmemtrack.so
```

To install on windows (needs admin privilages)
```bash
cmake --install build
# or 
cmake --install build --prefix desired_install_path
```

##



## License

This project is licensed under the MIT License.  
See LICENSE.txt and LICENSE_SDL.txt for more details.
