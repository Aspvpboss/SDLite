# SDLite Version 1.3.0


SDLite is a lightweight C / C++ framework built on top of **SDL3**, designed to simplify common SDL workflows while providing game-oriented utilities such as sprites, animation, audio handling, timing, input helpers, and collision functions.

This framework is intended to be a **generic SDL helper library**, slightly tailored toward 2D game development.


---

## Patch Notes

* #### Major Refactoring
  * replaced old Makefile build system with CMake
  * created extensive unit tests
  * reorganized file structure
  * various bug fixes
* Added MemTrack v1.4.0
* Added Pong example

---

## Dependencies

* CMake
* C & C++ compiler

CMake pulls the SDL3, SDL3_image, SDL3_mixer, and SDL3_ttf source code when compiling the library

CMake then statically links those libraries into the SDLite and debugSDLite shared libraries


## Documentation

All public functions are documented in their header files.  
Additionally, the included **MemTrack** library header contains documentation for memory tracking utilities and necessary macros.

See https://github.com/Aspvpboss/MemTrack for addtional docs over MemTrack


## SDLite Builds

Two prebuilt DLL versions of the framework are included:

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

Only one example project as of right is included:

- **Template Example**  
  Opens a window and displays the current FPS.

---

### Install System-Wide (or User-Wide)
To install system-wide on Linux (e.g. Fedora):
```bash
sudo cmake --install build
sudo ldconfig  # update dynamic linker cache for libmemtrack.so
```



Or install to user environment without root (`~/.local`):
```bash
cmake -B build -S . -DCMAKE_INSTALL_PREFIX=$HOME/.local
cmake --build build
cmake --install build
```
for other operating systems, just put the shared lib, header files, and cmake files where they need to go


## License

This project is licensed under the MIT License.  
See the LICENSE file for details.
