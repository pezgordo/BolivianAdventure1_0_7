// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){


onboard = 0;

if (invencible == 0) && !place_meeting(x, y + vsp, obj_pothole)
{

image_alpha = 1;
}

//enteleferico = 0;


//invencible = false;

//MOVIMIENTO
var move = key_right - key_left;

hsp = move * walksp; //* platform_hsp;


//SALTO
canjump -= 1;

if (canjump > 0) && (key_jump)
{
	
	state = PLAYERSTATE.JUMP;	
}


//ATTACK
if ((place_meeting(x, y + 1, obj_pared) && (key_attack))) or ((place_meeting(x, y + 1, obj_cemento) && (key_attack))) or ((place_meeting(x, y + 4, obj_teleferico_1) && (key_attack)))
{
	hsp = 0;
	state = PLAYERSTATE.ATTACK_SLASH;
	audio_play_sound(snd_player_punch, 5, 0);
}


//THROW
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




// COLISION VERTICAL CON TELEFERICO
//if (place_meeting(x, y + vsp, obj_teleferico_1)) && vsp > 0//  && (obj_teleferico_1.montable = 1) //&& !place_meeting(x, y, obj_teleferico_1))
if (place_meeting(x, y + vsp , obj_teleferico_1)) //&& vsp > 0
//if (place_meeting(x, y , obj_teleferico_1))
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
		onboard = 1;
	}

	
}







y = y + vsp;


//Animation
//Si cactus no esta tocando ni la pared, ni el cemento ni el teleferico
if (!place_meeting(x, y + 1, obj_pared)) and (!place_meeting(x, y + 1, obj_cemento)) and  (!place_meeting(x, y + 10, obj_teleferico_1))
{
	sprite_index = spr_cactus_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	if (key_attack)
	{
		state = PLAYERSTATE.ATTACK_KICK;
		audio_play_sound(snd_player_kick, 5, 0);
	}
}
else
{
	canjump = 10;
	image_speed = 1;
	
	if (key_left or key_right)
	
	
	{
		sprite_index = spr_cactus_run
	}
	else
	{
		sprite_index = spr_cactus_still
	}
	
	/*
	if (hsp == 0)
	{
		sprite_index = spr_cactus_still
	}
	else
	{
		sprite_index = spr_cactus_run_4frames
	}
	*/
	
}

// sprite faces side thats moving
if (hsp != 0) 
{
	if (place_meeting(x, y + 1, obj_teleferico_1))
	{
		if (move !=0) image_xscale = sign(move);
	}
	
	else
	{
		image_xscale = sign(hsp);
	}
}


}



