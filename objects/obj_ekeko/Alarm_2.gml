if (alarm[2] == 0)
	{
		var inst = (instance_create_layer(self.x + (50 * image_xscale), self.y + 80, "cruz3", obj_ekeko_fx_1));
		
		with(inst)
		{
			image_xscale = (other.image_xscale * 1.5)	
		}
		
		screen_shake(20, 15);
		audio_play_sound(snd_ekeko_slam, 8, 0);
		alarm[2] = false;
	}
	
	
	