/// @desc GUI Vars MenuSetup
#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width+200;
menu_y = gui_height  - gui_margin;

menu_xtarget = gui_width - gui_margin;
menu_speed = 25;
menu_itemheight = font_get_size(fMenu);
menu_committed =  -1;
menu_control = true;

menu[3] = "New game";
menu[2] = "Continue";
menu[1] = "Arena";
menu[0] = "Quit";

menu_items =array_length_1d(menu);

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);

menu_cursor = 2;

global.p1kills = 0;
global.p2kills = 0;