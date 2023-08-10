// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Jump(){




onboard = 0;
depth = 100;

//MOVIMIENTO
var move = key_right - key_left;

hsp = move * walksp;


//Cuando el cactus toca la pared , saltara a una velocidad de -11.1
if (canjump > 0)
{
	vsp = -11.1;
	canjump = 0;	
}



//SI CACTUS ESTA EN EL AIRE - KICK

if (!place_meeting(x, y + 1, obj_pared)) && (key_attack)
{
	state = PLAYERSTATE.ATTACK_KICK
	
}


//THROW
///
if (key_throw) && (obj_throwable.stock > 0)
{
	state = PLAYERSTATE.THROW;
}




// COLISION HORIZONTAL CON PARED
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp= 0;
}

// COLISION HORIZONTAL CON CEMENTO
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp= 0;
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

// COLISION VERTICAL CON CEMENTO
if (place_meeting(x, y + vsp, obj_cemento))
{
	while (!place_meeting(x, y+sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
	state = PLAYERSTATE.FREE;
	sprite_index = spr_cactus_still
}



///COLISION VERTICAL CON TELEFERICO

if (place_meeting(x, y + vsp, obj_teleferico_1)) && vsp > 0//  && (obj_teleferico_1.montable = 1) //&& !place_meeting(x, y, obj_teleferico_1))
{	

	var inst = instance_place(x, y + vsp, obj_teleferico_1);
	
	if (inst != noone) && (inst.montable = 1)
	{
		/*
		while (!place_meeting(x, y+sign(vsp), obj_teleferico_1))
		{
			y = y + sign(vsp);
		}
		*/
		vsp= 0;
		state = PLAYERSTATE.FREE;
		
	}
}



y = y + vsp;

//Animation
if (!place_meeting(x, y + 1, obj_pared))
{
	sprite_index = spr_cactus_jump;
	image_speed = 0; 
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	audio_sound_pitch(snd_landing, choose(0.8, 1.0, 1.2));
	audio_play_sound(snd_landing, 6, false)	
}


// sprite faces side thats moving
if (hsp != 0) image_xscale = sign(hsp);

}
