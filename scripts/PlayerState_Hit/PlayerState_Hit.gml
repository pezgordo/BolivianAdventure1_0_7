// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Hit(){
	
if (!invencible = 1)
{
	//ALARM THAT MAKES PLAYER INVENCIBLE
	alarm[1] = 1;
	
	
	//ACTIVATE ALARM FOR STROBR EFFECT
	alarm[6] = 1;
	
	
	
	
	//SCREEN_SHAKE
	screen_shake(20, 15);
	
	//AUDIO PLAT
	audio_play_sound(choose(snd_player_hit, snd_player_hit2, snd_player_hit3, snd_player_hit4, snd_player_hit5, snd_player_hit6, snd_player_hit7, snd_player_hit8), 9, 0)

	//CANTIDAD DE DAÑO RECIBIDO
	var _damage = argument0;
	hp -= _damage;

	//APLICAR SHADER FLASH X 3 FRAMES
	flash = 3;
	
	//DIRECCION Y VELOCIDAD
	direc = sign(self.x - other.x)
	hsp = direc * 90;
	vsp = -2;

	//ANIMATION
	sprite_index = spr_cactus_dead;
	mask_index = spr_cactus_run_aap64;



	// COLISION HORIZONTAL CON PARED
	if (place_meeting(x + hsp, y, obj_pared)) //&& (!place_meeting(x, y, obj_pared))
	{
		while (!place_meeting(x + sign(hsp), y, obj_pared))
		{
			x = x + sign(hsp);
		}
		//hsp= -hsp;
		hsp = 0;
	}

	// COLISION HORIZONTAL CON CEMENTO
	if (place_meeting(x + hsp, y, obj_cemento))
	{
		while (!place_meeting(x + sign(hsp), y, obj_cemento))
		{
			x = x + sign(hsp);
		}
		//hsp= -hsp;
		hsp = 0;
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
		state = PLAYERSTATE.FREE;
	}


	// VERTICAL CON CEMENTO
	if (place_meeting(x, y + vsp, obj_cemento)) 
	{
		while (!place_meeting(x, y+sign(vsp), obj_cemento))
		{
			y = y + sign(vsp);
		}
		vsp= 0;
		state = PLAYERSTATE.FREE;
	}
	
	y = y + vsp;




state = PLAYERSTATE.FREE;


}
}