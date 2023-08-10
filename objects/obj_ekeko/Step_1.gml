/// @description Insert description here
// You can write your code in this editor

if (hp <= 0)
{
	//CUANDO OBJ_PEPINO MUERE CREA OBJ_PEPINO_DEAD Y OBJ_SERPENTINA
	with(instance_create_layer(x, y, "cruz3", obj_ekeko_dead))
	{
		
		//direction = obj_hadduken.x;//.hitfrom;
		
		direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)
		
		hsp = lengthdir_x(6, direction);
		//vsp = lengthdir_y(22, direction)-2;
		vsp = -10;
		
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	with(instance_create_layer(x , y, layer, obj_serpentina))
	{
		direction = self.x;//.hitfrom;
		hsp = lengthdir_x(8, direction);
		vsp = lengthdir_y(4, direction);
		
		
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	
	instance_destroy();
	
}