// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Throw(){



//CREAR UN INSTANCE DE DINAMITA Y LANZAR
with(instance_create_layer(oCactus.x, oCactus.y, "enemy_onroad", obj_wpn_dinamite1_lit))

	{
		
	direc = oCactus.image_xscale;
		
	hsp = (obj_circle_test1.radiuses / 5) * direc;
	
	vsp = -6;

	}


/// DESCONTAR 1 DEL STOCK DE DINAMITA
obj_throwable.stock = obj_throwable.stock - 1;

/// VOLVER A FREE
state = PLAYERSTATE.FREE;	





}