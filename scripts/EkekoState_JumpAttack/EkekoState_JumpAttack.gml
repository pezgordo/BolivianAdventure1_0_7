// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EkekoState_JumpAttack(){

	

//Gravedad
vsp = vsp + grv;


timer = 0;

sprite_index = spr_ekeko_jump_attack_2;
image_speed = 1;

if(instance_exists(oCactus))
{
	

	// mirar en la direccion del oCactus 
	if (sign(oCactus.x - x) !=0) image_xscale = sign(oCactus.x - x)


	// direccion al cactus
	dir =  sign(oCactus.x - x);
}
//Velocidad
hsp = dir * 2; //random_range(1, 4);



///SI LLEGA AL FRAME 14 HSP 0
if (image_index > 14) 
{
	hsp = 0;
	ekeko_invencible = 1;	
}

//ATTACK FX
if (image_index > 13 && image_index <=14)

	{
		if(!alarm[2])
		{
		
			alarm[2] = 1;
		
		}
		
		
	}




if (animation_end(spr_ekeko_jump_attack_2))
	{
		hsp = 0;
		state = EKEKOSTATE.WALK;

	}

////COLISIONS
// Colision HOrizontal
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	
	//hsp= -hsp;
	
}

// Colision HOrizontal con cemento
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp= 0;
}


x = x + hsp;
 
// Colision Vertical
if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y+sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}
y = y + vsp;
////FIN COLISIONS



/*
///ATTACK
//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN
mask_index = spr_fx_zebra_punch_HB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, oCactus, hitByAttackNow, false);


/////////
if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack)
			var hitID = hitByAttackNow[| i]; //ds_list_find_value(hitByAttackNow, i);
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{
					PlayerState_Hit(1);
					
				}
		 
			}

		}
		
		ds_list_clear(hitByAttack);
	}
	
	

ds_list_destroy(hitByAttackNow);
mask_index = spr_zbr_still;

//

if (animation_end())
	{
		sprite_index = spr_zbr_still;
		
		
		
	}

*/



}