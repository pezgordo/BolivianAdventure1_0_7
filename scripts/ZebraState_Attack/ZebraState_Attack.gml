// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ZebraState_Attack(){

//Gravedad
vsp = vsp + grv;

hsp = 0;

///MIRAR EN LA DIRECCION DE CACTUS
if instance_exists(oCactus)
	{
		// mirar en la direccion del oCactus 
		if (sign(oCactus.x - x) !=0) image_xscale = sign(oCactus.x - x)
	}


//////





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
// COLISION HORIZONTAL CON CEMENTO
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	
	//hsp= -hsp;
	
}

x = x + hsp;
 
// COLISION VERTICAL CON PARED

if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y+sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}


// COLISION VERTICAL CON CEMENTO
if (place_meeting(x, y + vsp, obj_cemento))
{
	while (!place_meeting(x, y+sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}


y = y + vsp;





///SI ZEBRA ESTA PISANDO WALL
if (place_meeting(x, y + 1, obj_pared))
	{
		// INICIO DE ATAQUE
		if (sprite_index != spr_zbr_punch)

			{
				sprite_index = spr_zbr_punch;
				image_index = 0;
				image_speed = 1; 
				ds_list_clear(hitByAttack);
	
				//SOUND
				audio_play_sound(snd_zebra_punch, 8, 0, 0.5, 0, 2);
	

				////CREA UN INSTANCE DE OBJ FX_ZEBRA_PUNCH DETRAS DE ZEBRA
				with(instance_create_layer(x , y -32 , "balas", obj_fx_zebra_punch))
				{
					image_xscale = other.image_xscale;
						
				}


			}
	}




//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN
mask_index = spr_fx_zebra_punch;
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
		can_attack = false;
		alarm[1] = room_speed * 1;
	}



//ANIMATION
if (!place_meeting(x, y + 1, obj_pared))
	{
		sprite_index = spr_zbr_jump;
		image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	}



////STATE SWITCH
if instance_exists(oCactus)
{
	if point_distance(x, y, oCactus.x, oCactus.y) > 150
		{
			state = ZEBRASTATE.CHASE;	
		}
}



}