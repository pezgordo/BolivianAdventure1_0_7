/// @description Insert description here
// You can write your code in this editor

if (hp <= 0)
{
	//CUANDO OBJ_PEPINO MUERE CREA OBJ_PEPINO_DEAD Y OBJ_SERPENTINA
	with(instance_create_layer(x, y, "cruz3", obj_pepino_dead))
	{
		
		//direction = obj_hadduken.x;//.hitfrom;
		if instance_exists(oCactus)
		{
			direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)
		
			hsp = lengthdir_x(6, direction);
					
		}
		
		vsp = -7;
		
		
		
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	
	
	////
	ds_list_add(global.lista_checkpoint, id);
	////
	
	
	instance_destroy();
	
}