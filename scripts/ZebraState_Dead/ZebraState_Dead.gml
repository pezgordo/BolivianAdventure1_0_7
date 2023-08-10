// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ZebraState_Dead(){
if instance_exists(oCactus)
{
with(instance_create_layer(x, y, layer, obj_zebra_dead))
	{
		
		//direction = obj_hadduken.x;//.hitfrom;
		
		//direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)
		
		face_side = sign(oCactus.x - self.x)
		
		hsp = hsp - (face_side * 6);
		
		//hsp = 20 * direction;
		
		//vsp = lengthdir_y(22, direction)-2;
		vsp = -6;
		
		if (sign(hsp) != 0) image_xscale = -(sign(hsp));
		
		//x = x + hsp;
	}
}

	////
	ds_list_add(global.lista_checkpoint, id);
	////

	instance_destroy();
}