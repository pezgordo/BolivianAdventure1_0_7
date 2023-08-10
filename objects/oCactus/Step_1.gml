if (hp <= 0)
{
	
	global.vidas -= 1;
	//CUANDO OBJ_PEPINO MUERE CREA OBJ_PEPINO_DEAD Y OBJ_SERPENTINA
	with(instance_create_layer(x, y, "player", obj_cactus_dead))
	{
		
		//direction = obj_hadduken.x;//.hitfrom;
		
		direction = point_direction(obj_enemy.x, obj_enemy.y, self.x, self.y)
		
		hsp = lengthdir_x(6, direction);
		//vsp = lengthdir_y(22, direction)-2;
		vsp = -5;
		
		if (sign(hsp) != 0) image_xscale = sign(hsp);
		
		if (bbox_bottom > room_height)
		{
			sprite_index = spr_empty;	
		}
		
	}
	
	audio_play_sound(snd_player_dead, 10, 0)
	
	instance_destroy()
	
	
	//GUARDAR INFO DE STOCK 
	
	
	if (file_exists("checkpoint.ini"))
	{
			
		ini_open("checkpoint.ini");

		ini_write_real("throwable", "stock", obj_throwable.stock);
		
		
		ini_write_real("pickups", "monedas", coins);
		
		///
		ini_write_real("pickups", "cruz_andina_1", cruz3_1);
		ini_write_real("pickups", "cruz_andina_2", cruz3_2);
		ini_write_real("pickups", "cruz_andina_3", cruz3_3);
		ini_write_real("pickups", "cruz_andina_4", cruz3_4);
		
		///
		
		
		
		
		
	
		//ini_write_real("health", "vidas", vidas);

		ini_close();
	}
	
	
	//instance_change(obj_cactus_dead, true)
	//object_set_visible(oCactus, false);
	
}


//cactusH = cactusH - (vsp );
//cactusH = cactusH - (vsp);


