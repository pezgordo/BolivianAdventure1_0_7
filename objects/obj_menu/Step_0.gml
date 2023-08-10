// Control Menu

//Item ease in

menu_x += (menu_x_target - menu_x) / menu_speed;

//

//Keyboard controls

if (menu_control)
{
	if(keyboard_check_pressed(vk_left))
	{
		audio_play_sound(snd_menu_click, 8, 0)
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;	
	}
	
	if(keyboard_check_pressed(vk_right))
	{
		audio_play_sound(snd_menu_click, 8, 0)
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items -1;	
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		audio_play_sound(snd_menu_confirm, 9, 0)
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		screen_shake(6, 30);
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: slide_transition(TRANS_MODE.NEXT); break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				slide_transition(TRANS_MODE.NEXT);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				slide_transition(TRANS_MODE.GOTO, target)
			}
			
			
		}
		break;
		case 0: game_end(); break;
	
		
	}
}