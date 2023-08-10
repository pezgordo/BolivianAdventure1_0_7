if (hp <= 0)
{
	//CUANDO OBJ_PEPINO MUERE CREA OBJ_PEPINO_DEAD Y OBJ_SERPENTINA
	with(instance_create_layer(x, y, "balas", obj_dust))
	{
		
		//direction = obj_hadduken.x;//.hitfrom;
		if (instance_exists(oCactus))
		{
			direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)
		
			hsp = lengthdir_x(6, direction);
			//vsp = lengthdir_y(22, direction)-2;
			vsp = -7;
		}
		
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	instance_destroy()
	
	
	
}