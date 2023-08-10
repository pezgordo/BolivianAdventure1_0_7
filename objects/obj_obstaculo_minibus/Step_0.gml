/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oCactus))
	{
		if (distance_to_object(oCactus) < 900)
			{
				hsp = 4
			}

	var direccion = sign(self.x - oCactus.x)

	if (direccion > 0)
	{
		if (distance_to_object(oCactus) <= 772 && distance_to_object(oCactus) >= 750) 
		{
		
			if (!audio_is_playing(snd_honk))
				{
					audio_play_sound(snd_honk, 8 , 0);
				}
		
		
		}
	}

x  = x -hsp;


//increase rotation speed

rotate_speed = rotate_speed + 40;


}
mask_index = spr_obstaculo_minibusHB;
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
//mask_index = spr_pepino_run2;
