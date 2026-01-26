#include "render.h"


int render(Appstate *state){

    SDK_Display *display = state->display;

    SDK_DisplayClear(display);

    SDK_Render_Text(state->fps_text);

    SDK_DisplayPresent(display);

    return 0;
}
