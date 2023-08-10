// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Kick(){

invencible = true;



// COLISION HORIZONTAL CON PARED
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

// COLISION HORIZONTAL CON CEMENTO
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}


x = x + hsp;


 
// COLISION VERTICAL CON PARED
if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y + sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
	
}

// COLISION VERTICAL CON CEMENTO
if (place_meeting(x , y + vsp, obj_cemento))
{
	while (!place_meeting(x , y + sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}


// COLISION VERTICAL CON TELEFERICO
if (place_meeting(x , y + vsp, obj_teleferico_1))
{
	while (!place_meeting(x , y + sign(vsp), obj_teleferico_1))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}



y = y + vsp;

///

//INICIO DEL ATAQUE
if (sprite_index != spr_cactus_kick)
//if (sprite_index = spr_cactus_jump)
{
	sprite_index = spr_cactus_kick;
	image_index = 0;
	image_speed = 1; 
	ds_list_clear(hitByAttack);
	
	
//////////CREA UN INSTANCE DE OBJ HADDUKEN DETRAS DE OCACTUS
	with(instance_create_layer(x, y + 30, "balas", obj_hadduken))
	{
		
		//x = self.x;
		//y = self.y;
	
		
		//hsp = 0;
		//vsp = 0;
		
		//if (oCactus.image_xscale) < 0) image_xscale = 
		
		if (sign(oCactus.image_xscale) != 0) image_xscale = sign(oCactus.image_xscale);
	}
//////////

}

//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN

mask_index = spr_cactus_kick;
//mask_index = spr_hadduken;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, obj_enemy, hitByAttackNow, false);
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
					//ZebraState_Hit(1);
					EnemyHit(1);
				}
		 
			}

		}
	}
	
	

ds_list_destroy(hitByAttackNow);
mask_index = spr_cactus_run;






if (animation_end())
	{
		sprite_index = spr_cactus_run;
		state = PLAYERSTATE.FREE;
		invencible = false;

	}




}