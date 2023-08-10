if (alarm[3] == 0)
	{
		var inst = (instance_create_layer(self.x, self.y , "cruz3", obj_ekeko_fx_kick_attack));
		
		with(inst)
		{
			image_xscale = (other.image_xscale	* 4);
		}	
		
		audio_play_sound(snd_ekeko_kick, 8, 0);
		
		//screen_shake(20, 15);
		alarm[3] = false;
	}