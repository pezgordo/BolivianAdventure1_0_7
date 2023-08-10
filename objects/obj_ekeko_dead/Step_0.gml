/// @description Insert description here
// You can write your code in this editor
if (done == 0)
{
	vsp = vsp + grv;
	
	
	

	// Colision HOrizontal
	if (place_meeting(x + hsp, y, obj_pared))
	{
		while (!place_meeting(x + sign(hsp), y, obj_pared))
		{
			x = x + sign(hsp);
		}
		hsp= 0;
	}
	x = x + hsp;
 
	// Colision Vertical
	if (place_meeting(x, y + vsp, obj_pared))
	{
		if (vsp > 0) done = 1;
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while (!place_meeting(x, y+sign(vsp), obj_pared))
		{
			y = y + sign(vsp);
		}
		vsp= 0;
		with(instance_create_layer(x , y, "cruz3", obj_pepino_explosion1))
		{
		//direction = self.x;//.hitfrom;
		
		//if object_exists(oCactus)
		if instance_exists(oCactus)
		{
		
		direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)
		hsp = lengthdir_x(6, direction);
		vsp = -7;
		
		vsp = lengthdir_y(4, direction);
		}
		
		//if (sign(hsp) != 0) image_xscale = sign(hsp);
		}
	}
	y = y + vsp;
}