#ifndef GAMESTATE_INIT_H
#define GAMESTATE_INIT_H

#include "appstate.h"
#include "update.h"
#include "quit.h"



Gameplay* init_gameplay(Appstate *state);
Main_Menu* init_main_menu(Appstate *state);
Win_Menu* init_win_menu(Appstate *state);


#endif