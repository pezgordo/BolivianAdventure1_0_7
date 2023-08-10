//USAR EL HITBOX DE ATAQUE PARA VER SI GOLPEA A ALGUIEN
mask_index = spr_fx_explosion1; //antes spr_hadduken
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
					//ZebraState_Hit(1)
					//state = ZEBRASTATE.HIT;
					EnemyHit(2)
					//sprite_index = spr_zbr_hit;
					//Cemento_Hit(1)
				}
		 
			}

		}
	}
	
	

ds_list_destroy(hitByAttackNow);

	
///FIN DE