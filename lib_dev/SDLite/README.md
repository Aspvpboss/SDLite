# SDLite Version 1.2.0

SDLite is a lightweight C / C++ framework built on top of **SDL3**, designed to simplify common SDL workflows while providing game-oriented utilities such as sprites, animation, audio handling, timing, input helpers, and collision functions.

This framework is intended to be a **generic SDL helper library**, slightly tailored toward 2D game development.

---

## Patch Notes

- changed SDK prefix to SDLite, (SDK was a bad name)
- replaced const variables in SDLite structs to be opaque (mostly)
- created many new getters and setters for all modules of SDLite
- SDLite_Sprites can now share the same texture, read the new docs to learn how
- Updated to Memtrack v1.1, made functions names cleaner and added support for multithreading
- Documented multithreading support for each module of SDLite
---

## Dependencies

The included folder **`SDL_libs_all`** contains all required SDL libraries used by this framework:

- SDL3 v3.5  
- SDL3_image v3.2  
- SDL3_mixer v3.1  
- SDL3_ttf v3.3  

You must link against these libraries to build projects using SDLite.

---

## SDLite Builds

Two prebuilt DLL versions of the framework are included:

- **SDLite.dll**  
  Standard release build.  
  No memory allocation tracking.  
  Intended for normal application or game builds.

- **debugSDLite.dll**  
  Debug build with **MemTrack** memory allocation tracking enabled.  
  Useful for detecting memory leaks and tracking allocations during development.

Choose the DLL that fits your use case and link against the corresponding import library.

---

## Documentation

All public functions are documented in their header files.  
Additionally, the included **MemTrack** library header contains documentation for memory tracking utilitiess.

---

## Prerequisites

This framework assumes you already have a basic understanding of SDL, and are comfortable with C / C++.  
Knowing how SDL works internally will make the SDLite much easier to understand and use effectively.

---

## Examples

Several example projects are included:

- **Template Example**  
  Opens a window and displays the current FPS.

- **Simple 2D Game Example**  
  Demonstrates sprites, animation, input, collision, audio, and text rendering.

These examples serve as both references and starting templates.

---

## Purpose

This SDLite is designed to:

- Reduce SDL boilerplate code  
- Provide reusable game-oriented helpers  
- Stay lightweight and flexible  
- Avoid forcing a rigid engine structure

---

## License

This project is licensed under the MIT License.  
See the LICENSE file for details.
