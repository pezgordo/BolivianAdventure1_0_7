// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free24(){

invencible = false;

//MOVIMIENTO
var move = key_right - key_left;

hsp = move * walksp;


//SALTO
canjump -= 1;

if (canjump > 0) && (key_jump)
{
	
	state = PLAYERSTATE.JUMP;	
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


///*// Colision Vertical con teleferico

if (place_meeting(x, y + vsp, obj_teleferico_1)) //&& vsp > 0//  && (obj_teleferico_1.montable = 1) //&& !place_meeting(x, y, obj_teleferico_1))
{	
	
	//if (obj_teleferico_1.montable = 1)
	
	var inst = instance_place(x, y + vsp, obj_teleferico_1);
	
	if (inst != noone)
	{
	
		if (inst.montable = 1)
	
		{
			while (!place_meeting(x, y+sign(vsp), obj_teleferico_1) )
			{
				y = y + sign(vsp);
			}
			vsp= 0;
			hsp = 0;
			//hsp = (- (obj_teleferico_1.hsp));
			//hsp = (obj_teleferico_1.hsp);
			state = PLAYERSTATE.FREEONPLATFORM;
		}
	}
}



/*
if (instance_place(x, y + vsp, obj_teleferico_1))//  && (obj_teleferico_1.montable = 1) //&& !place_meeting(x, y, obj_teleferico_1))
{	
	
	if (other.montable = 1)
	
	{
		while (!instance_place(x, y+sign(vsp), obj_teleferico_1) )
		{
			y = y + sign(vsp);
		}
		//vsp= 0;
		//hsp = (- (obj_teleferico_1.hsp));
		//hsp = (obj_teleferico_1.hsp);
		state = PLAYERSTATE.FREEONPLATFORM;
	}
}

*/

/*
//Colision Vertical con teleferico
if (place_meeting(x, y + vsp, obj_teleferico_1)) //&& !place_meeting(x, y, obj_teleferico_1)
{
	while (!place_meeting(x, y+sign(vsp), obj_teleferico_1))
	{
		//if vsp != 0
		//{
			y = y + sign(vsp);
		//}
	}
	
	//vsp= 0;
	
	//vsp = teleferico_vsp;
	//hsp = teleferico_hsp;
	
	tvsp = obj_teleferico_1.vsp;
	
	thsp = obj_teleferico_1.hsp;
	
	//y = obj_teleferico_1.y + 55;
	
	vsp = tvsp;
	hsp = hsp + thsp;
}
*/



x = x + hsp;

y = y + vsp;





//Animation
//Si cactus no esta tocando ni la pared, ni el cemento ni el teleferico
if (!place_meeting(x, y + 1, obj_pared)) and (!place_meeting(x, y + 1, obj_cemento)) and (!place_meeting(x, y + 1, obj_teleferico_1))
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
	if (hsp == 0)
	{
		sprite_index = spr_cactus_still
	}
	else
	{
		sprite_index = spr_cactus_run_4frames
	}
	
}

// sprite faces side thats moving
if (hsp != 0) image_xscale = sign(hsp);


//Attack
if ((place_meeting(x, y + 1, obj_pared) && (key_attack))) or ((place_meeting(x, y + 1, obj_cemento) && (key_attack))) or ((place_meeting(x, y + 1, obj_teleferico_1) && (key_attack)))
{
state = PLAYERSTATE.ATTACK_SLASH;
audio_play_sound(snd_player_punch, 5, 0);
}

//Throw
///
if (key_throw) && (obj_throwable.stock > 0)
{
	state = PLAYERSTATE.THROW;
}


///
}
