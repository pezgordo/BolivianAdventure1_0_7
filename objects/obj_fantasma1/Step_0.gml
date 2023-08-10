// You can write your code in this editor
if (instance_exists(oCactus))
{


	if (distance_to_object(oCactus) < 900)
		{
			hsp = -2
		}

	var direccion = sign(self.x - oCactus.x)

	if (direccion > 0)
	{
		if (distance_to_object(oCactus) <= 772 && distance_to_object(oCactus) >= 750) 
		{
		
			if (!audio_is_playing(snd_ghost1))
				{
					audio_play_sound(snd_ghost1, 8 , 0);
				}
		}
		
		
	}

}

x = x + hsp;

y = ystart + sin(get_timer()/500000)*50;

//FADER EFFECT
fade_timer --;

if (fade_timer <= 0)
	{
		fade_timer = fade_time;	
		
		part_particles_create(obj_particle_setup.particle_system, x,y, obj_particle_setup.particle_type_ghost_fade, 1);
		
	}
	
	
	
	
///ATTACK
mask_index = spr_fantasma;
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