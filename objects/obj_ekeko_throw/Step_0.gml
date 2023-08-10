vsp = vsp + grv;

objeto_select = cara;

x = x + hsp;
y = y + vsp;


rotacion = rotacion + random_range(2,8);


//////
//FADER EFFECT
fade_timer --;

if (fade_timer <= 0)
	{
		fade_timer = fade_time;	
		
		part_particles_create(obj_particle_setup_ekeko_objetos.particle_system, x,y, obj_particle_setup_ekeko_objetos.particle_type_ghost_fade, 1);
		
	}
	
///FLASH TIMER

timer = timer + 1;

if (timer > 30) timer = 1;



///DAMAGE
///


///ATTACK
//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN
mask_index = spr_circle_64;
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