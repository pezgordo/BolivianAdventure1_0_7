vsp = vsp + grv;

///
if place_meeting(x, y + vsp, obj_pothole)
{
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	spriteH -= vsp
}

///
//Dont walk off edges

if (grounded) && (afraidofheights) && (!place_meeting(x+sprite_width / 2,y+1,obj_pared))
{

hsp = -hsp;
	
}

// Colision HOrizontal
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp= -hsp;
}

// Colision HOrizontal con cemento
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp= -hsp;
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

// Colision Vertical con cemento
if (place_meeting(x, y + vsp, obj_cemento))
{
	while (!place_meeting(x, y+sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}





y = y + vsp;


//Animation
if (!place_meeting(x, y + 1, obj_pared))
{
	grounded = false;
	sprite_index = spr_pepino_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_pepino_still
	}
	else
	{
		sprite_index = spr_pepino_run2
	}
	
}


if (hsp != 0) image_xscale = sign(hsp);




////////

//INICIO DEL ATAQUE
////if (sprite_index = spr_pepino_run2)
//if (sprite_index = spr_cactus_jump)
////{
	//sprite_index = spr_pepino_run2;
	//image_index = 0;
	//image_speed = 1; 
	//ds_list_clear(hitByAttack);
	
	


////}

//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN
mask_index = spr_pepino_run2HB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, oCactus, hitByAttackNow, false);
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
mask_index = spr_pepino_run2;





/////////


