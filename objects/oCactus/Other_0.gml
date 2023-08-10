if (vsp > 1)
{
	
	with(instance_create_layer(x, y + 70, "weapon", obj_cactus_dead))
	{
	
		alarm[0] = 60;
		image_index = spr_empty;
		mask_index = spr_empty;
		game_set_speed(60, gamespeed_fps);
		
		//direction = obj_hadduken.x;//.hitfrom;
		
		//direction = point_direction(obj_enemy.x, obj_enemy.y, self.x, self.y)
		
		//hsp = lengthdir_x(6, direction);
		//vsp = lengthdir_y(22, direction)-2;
		//vsp = -5;
		
		//if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	
	hp = 0;
	audio_play_sound(snd_player_dead, 8, 0);
	//alarm[0] = 30;
}