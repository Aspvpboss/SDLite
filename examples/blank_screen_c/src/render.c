#include "render.h"


int render(Appstate *state){

    SDLite_Display *display = state->display;

    SDLite_DisplayClear(display);

    SDLite_Render_Text(state->fps_text);

    SDLite_DisplayPresent(display);

    return 0;
}
