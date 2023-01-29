// item ease in
menu_x+=(menu_xtarget - menu_x) /menu_speed;

// key  controls

if (menu_control)
{
	if(keyboard_check_pressed(vk_up) )
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		audio_play_sound(choose(snMenu1,snMenu2,snMenu3,snMenu4,snMenu5,snMenu6),1,false);
	}
		if(keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
		audio_play_sound(choose(snMenu1,snMenu2,snMenu3,snMenu4,snMenu5,snMenu6),1,false);
	}
	if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1))
	{
		menu_xtarget = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(4,30);
		menu_control = false;
		audio_play_sound(snMenuOk,10,false);
	}


	var mouse_y_gui = device_mouse_y_to_gui(0);
	if (mouse_y_gui < menu_y) && (mouse_y_gui >menu_top)
	{
		
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		
		if(mouse_check_button_pressed(mb_left))
		{
			menu_xtarget = gui_width + 200;
			menu_committed = menu_cursor;
			ScreenShake(4,30);
			menu_control = false;
			audio_play_sound(snMenuOk,10,false);
		}
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 3: 
					SlideTransition(TRANS_MODE.GOTO,roomActive); 
		break;
		case 2: 
		{
			if(!file_exists(SAVEFILE))
			{
				SlideTransition(TRANS_MODE.NEXT);
			}
			else
			{
				
				var file =file_text_open_read(SAVEFILE);
				target = file_text_read_real(file);
				global.kills = file_text_read_real(file);
				global.p1active = file_text_read_real(file);
				global.p2active = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO,target);
			}
		}
		break;
		case 1: 
			target = room1v1;
			SlideTransition(TRANS_MODE.GOTO,other.target); 
		break;
		case 0: game_end(); break;
	}
}