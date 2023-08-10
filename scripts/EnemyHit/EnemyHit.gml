// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(){




/*
//DIRECCION
if instance_exists(oCactus)
{
	direc = sign(self.x - oCactus.x)
}
else
	{
		direc = 1;
	}
*/



//SI ENEMY ES EKEKOBOSS
if (object_index = obj_ekeko) && (ekeko_invencible < 1)
{
	var _damage = argument0;
	
	hp -= _damage;

	flash = 3;
	
	vsp = -4;
	
	if (instance_exists(oCactus))
		{
			direc = sign(self.x - oCactus.x)
		}
		
	else
		{
			direc = 1;
		}
			
	state = EKEKOSTATE.HIT;
	
	///PLAY SOUND
	audio_play_sound(snd_punch, 5, false);
	
	
}



//SI ENEMY ES PEPINO
if (object_index = obj_pepino)
{
	var _damage = argument0;
	
	hp -= _damage;
	
	//hp -= 1;
	

	flash = 3;
	
	vsp = -8;
	
	if (instance_exists(oCactus))
	{
		direc = sign(self.x - oCactus.x)
	}
	else
	{
		direc = 1;
	}
	
	hsp = direc * 6;
	
	
	
	///PLAY SOUND
	audio_play_sound(snd_punch, 5, false);
}



//SI ENEMY ES ZEBRA
if (object_index = obj_zebra)
{
	var _damage = argument0;
	
	hp -= _damage;

	flash = 3;
	
	vsp = -6;
	
	if instance_exists(oCactus)
	{
		direc = sign(self.x - oCactus.x);
	}
	else
	{
		direc = 1;
	}
	
	state = ZEBRASTATE.HIT;	
	
	/*
	hit_distance = 150 * direc;
	vsp = -8;
	//hsp = hsp * 20;

		// Colision HOrizontal
		if (place_meeting(x + hit_distance, y, obj_pared))
		{
			while (!place_meeting(x + sign(hit_distance), y, obj_pared))
			{
				x = x + sign(hit_distance);
			}
		hit_distance = 0;
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

	x = x + hit_distance;
	alarm[0] = 15;
	*/
	///PLAY SOUND
	audio_play_sound(snd_punch, 5, false);
}

///SI ENEMY ES KUSILLO
if (object_index = obj_kusillo)
{
	var _damage = argument0;
	
	hp -= _damage;

	

		
	if instance_exists(oCactus)
	{
		direc = sign(self.x - oCactus.x)
	}
	else
	{
		direc = 1;
	}
		
	flash = 3;
	hit_distance = 150 * direc;
	vsp = -4;
		
		//--Colision horizontal con pared--
		if (place_meeting(x + hit_distance, y, obj_pared))
		{
			while (!place_meeting(x + sign(hit_distance), y, obj_pared))
			{
				x = x + sign(hit_distance);
			}
		
	
		hit_distance = 0;
	
		}

		// Colision HOrizontal con cemento
		if (place_meeting(x + hit_distance, y, obj_cemento))
		{
			while (!place_meeting(x + sign(hit_distance), y, obj_cemento))
			{
				x = x + sign(hit_distance);
			}
		
		hit_distance= 0;
	
		}
	
	x = x + hit_distance;
	///PLAY SOUND
	audio_play_sound(snd_punch, 5, false);

}


/// CEMENTO Y LLANTAS
if (object_index = obj_cemento) || (object_index = obj_llantas1) 

{
	var _damage = argument0;
	
	hp -= _damage;
	hsp = 10;
	flash = 3;
	
	if (instance_exists(oCactus))
	{
		direc = sign(self.x - oCactus.x)
	}
	else
	{
		direc = 1;
	}
	
	x = x + (hsp) * direc;
	///PLAY SOUND
	audio_play_sound(snd_punch, 5, false);
}

///MINIBUS
if (object_index = obj_obstaculo_minibus)

{
	var _damage = argument0;
	
	hp -= _damage;
	//hsp = 10;
	flash = 5;
	
	if (instance_exists(oCactus))
	{
		direc = sign(self.x - oCactus.x)
	}
	else
	{
		direc = 1;
	}
	
	//x = x + (hsp) * direc;
	///PLAY SOUND
	audio_play_sound(snd_punch, 5, false);
}






/*
else

{
	var _damage = argument0;
	
	hp -= _damage;

	flash = 3;
	x = x + (hsp) * direc;
}

*/
	


}



