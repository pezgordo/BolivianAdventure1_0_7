// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EkekoState_HipHopAttack(){

ekeko_invencible = 0;

	

//Gravedad
vsp = vsp + grv;

timer = timer + 1;


	
if (timer == 30) 
	
	
	{
	alarm[1] = room_speed * 2;
	
	}




sprite_index = spr_ekeko_hiphop_dance;

image_speed = 1;


////THROW LEFT
if (image_index > 7 && image_index <= 8)
{
	var crear_objecto = instance_create_layer(x, y, "balas", obj_ekeko_throw)
	
	with (crear_objecto)
	{
	//hsp = -4
	hsp = choose(-2, -4, -6, -8);
	vsp = choose(-8, -9, -10, -11, -12, -13, -14);
	}
	
}



///THROW RIGHT
if (image_index > 1 && image_index <= 2)
{
	var crear_objecto = instance_create_layer(x, y, "balas", obj_ekeko_throw)
	
	with (crear_objecto)
	{
	//hsp = 4
	hsp = choose(2, 4, 6, 8);
	vsp = choose(-8, -9, -10, -11, -12, -13, -14);
	}
	
}




}