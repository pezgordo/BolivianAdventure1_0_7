if instance_exists(obj_ekeko)
{
x = obj_ekeko.x;
y = obj_ekeko.y;
}


///ATTACK
//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN
mask_index = spr_ekeko_f1_kick_attack;
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
//mask_index = spr_zbr_still;

/*

if (animation_end())
	{
		sprite_index = spr_zbr_still;
		
		
		
	}





}