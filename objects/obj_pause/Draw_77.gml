//Disable alpha blending (we just want RGB from screen)
gpu_set_blendenable(false);

if (pause) //draw frozen image to screen while paused

{
	surface_set_target(application_surface);
	
		//draw_clear_alpha(0, 0);
	
		//if (surface_exists(pauseSurf)) draw_surface(pauseSurf, 0, 0);
		
		////
		
		if (surface_exists(pauseSurf))
		{
			/*
			draw_set_colour(c_black);
			draw_set_alpha(0);
		    draw_rectangle(0, 0, resW, resH, false);
		    draw_set_colour(c_white);
		    draw_set_alpha(1);
			*/
			
			surface_set_target(pauseSurf);
			
			//draw_clear_alpha(0, 0);
			
			//draw_clear(c_white);
			//draw_set_color(c_blue)
			//draw_sprite(spr_tree_8, 0, 200, 200);
			
			//draw_text_color(
			//draw_set_color(c_white);
			//draw_set_halign(fa_center);
			draw_set_font(f_pausa);
			draw_set_color(c_black);
			draw_text(400, 100, "PAUSA");
			if(instance_exists(oCactus))
			{
				draw_text(100, 200,texto_pausa);
			}
			draw_set_font(-1);
			//draw_set_halign(-1);
			/*
			
			if (instance_exists(oCactus))
			{
				if (oCactus.cruz_andina >= 1) && (oCactus.cruz_andina <= 4)
					{			
						draw_text(100, 200, "Aun te faltan 3 piezas para completar la Cruz Andina")
					}
					
				if (oCactus.cruz_andina >= 5) && (oCactus.cruz_andina <= 10)
					{			
						draw_text(100, 200, "Aun te faltan 2 piezas para completar la Cruz Andina")
					}
				if (oCactus.cruz_andina >= 11) && (oCactus.cruz_andina <= 14)
					{			
						draw_text(100, 200, "Solo te falta 1 pieza para completar la Cruz Andina")
					}
				if (oCactus.cruz_andina == 15)
					{			
						draw_text(100, 200, "Completaste la Cruz! Ve con el Monolito")
					}
				
			}
			*/
			
			surface_reset_target();
			
			//gpu_set_blendenable(false);
			gpu_set_blendenable(true);
			
			draw_surface(pauseSurf, 0, 0);
		}
		////
		
		
		
		else //restore from bufer if we lost the surface
		{
			pauseSurf = surface_create(resW, resH);
			buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(ord("U"))) ///Toggle pause
{
	if (!pause) //pause now
	{
		pause = true;
		
		//deactivate everything other than this instance
		
		instance_deactivate_all(true);
		instance_activate_object(obj_game_pause_button);
		//instance_deactivate_all(notme);
		
		
		
		//NOTE:
		//if you need to pause anything like animating sprites, tiles, room backgrounds etc
		// you need to that separately, unfortunaly!
		
		//capture this game moment (won't capture draw gui contents though)
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		//Back up this surface to a buffer in case we lose it (screen focus, etc)
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	else //unpause now
	{
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}

//Enable alpha blending again
gpu_set_blendenable(true);
		
		
		