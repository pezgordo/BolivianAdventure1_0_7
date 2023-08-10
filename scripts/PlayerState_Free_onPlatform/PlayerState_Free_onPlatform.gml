// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free_onPlatform(){



//MOVIMIENTO
var move = key_right - key_left;

platform_hsp = move * walksp;



//PUEDE SALTAR CUANDO ESTA ENCIMA DE LA PLATAFORMA
canjump -= 1;


//SALTO
if (canjump > 0) && (key_jump)

{
	//hsp = hsp * 2
	state = PLAYERSTATE.JUMP;	
}


//ATTACK
if ((place_meeting(x, y + vsp, obj_teleferico_1) && (key_attack)))
{
state = PLAYERSTATE.ATTACK_SLASH;
}


//THROW
if (key_throw) && (obj_throwable.stock > 0)
{
	state = PLAYERSTATE.THROW;
}



///COLISION VERTICAL CON TELEFERICO

/// ASIGNAR INSTANCE

var inst = instance_place(x, y + vsp, obj_teleferico_1);

tele_inst = inst;

if (place_meeting(x, y + vsp, inst))  && (inst.montable = 1)
{
	if (inst!= noone)
	{
	tvsp = inst.vsp;
	
	thsp = inst.hsp;
		
	vsp = tvsp;
		
	hsp = platform_hsp + thsp;
	
	
		// COLISION HORIZONTAL CON PARED MIENTRAS ESTAS ENCIMA DE TELEFERICO
		if (place_meeting(x + hsp, y, obj_pared)) 
		{
			while (!place_meeting(x + sign(hsp), y, obj_pared))
			{
				x = x + sign(hsp);
			}
			
		hsp= 0;
		
		}	
		
		
		if (place_meeting(x + hsp, y, obj_pared_desvaneciendo)) 
		{
			while (!place_meeting(x + sign(hsp), y, obj_pared_desvaneciendo))
			{
				x = x + sign(hsp);
			}
			
		hsp= 0;
		
		}
		
	//x = x + hsp;
	//y = y + vsp;
	
	}
	
	/*
	else
	{
		//obj_teleferico_1.mask_index = spr_empty;
		state = PLAYERSTATE.FREE;
		//hsp = platform_hsp;
	}
	*/
}

if (tele_inst = -4)
{
	if (!place_meeting(x, y, obj_teleferico_1)) state = PLAYERSTATE.FREE;
	
}

/*
if (!place_meeting(x, y + vsp, obj_teleferico_1))  //&& (inst.montable = 1)

{
	hsp = platform_hsp;
}
*/


/*

else
	{
		//obj_teleferico_1.mask_index = spr_empty;
		state = PLAYERSTATE.FREE;
	}
*/



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
}


x = x + hsp;
y = y + vsp;




//-*-*-ANIMATION-*-*-
//Si cactus no esta tocando ni la pared, ni el cemento ni el teleferico
//SI CACTUS ESTA EN EL AIRE
if (!place_meeting(x, y + 1, obj_pared)) and (!place_meeting(x, y + 1, obj_cemento)) and (!place_meeting(x, y + 1, obj_teleferico_1)) and (vsp > 4)
{
	sprite_index = spr_cactus_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
	if (key_attack) state = PLAYERSTATE.ATTACK_KICK;
}

//SI CACTUS ESTA EN EL PISO
else
{
	canjump = 10;
	image_speed = 1;
	
	
	//if (hsp == 0)
	
	if (key_left or key_right)
	
	
	{
		sprite_index = spr_cactus_run
	}
	else
	{
		sprite_index = spr_cactus_still
	}
	
}

// sprite faces side thats moving
if (platform_hsp != 0) image_xscale = sign(platform_hsp);

















}