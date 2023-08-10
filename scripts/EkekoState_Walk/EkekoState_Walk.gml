// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EkekoState_Walk(){

ekeko_invencible = 0;


//Gravedad
vsp = vsp + grv;

timer = timer + 1;


	
if (timer == 30) 
	
	
	{
	alarm[0] = room_speed * 2;
	
	
	
	}



//Gravedad
vsp = vsp + grv;


////



// caminar en direccion al cactus
//dir =  sign(oCactus.x - x);

//dir = choose(-1, 1);

//Velocidad
//hsp = (dir * (-1)) //* -1; //random_range(1, 4);

hsp = walksp;

//hsp = 1;

///



/// Mirar para el lado que camina
if (hsp != 0) image_xscale = sign(hsp);

/*
else
{
hsp = 1;

}
*/


//// Movimiento



// Colision HOrizontal
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp= -hsp;
	
}

// Colision HOrizontal con cemento
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp= -hsp;
}


x = x + hsp;
 
// Colision Vertical
if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y+sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}
y = y + vsp;


////CHANGE STATE
if (instance_exists(oCactus))
{
	if (oCactus.y >= y - 200)
	{
		if (point_distance(x, y, oCactus.x, oCactus.y) < 300)  // < 300 && point_distance(x, y, oCactus.x, oCactus.y) >200
			{
				alarm[0] = -1;
				state = EKEKOSTATE.CHASE;
		
	
			}
	}
	
	else if (oCactus.y < y - 200) || (point_distance(x, y, oCactus.x, oCactus.y) > 800)
	{
		alarm[0] = -1;
		state = EKEKOSTATE.AIRCHASE;	
	}
}
////



//ANIMATION
if (!place_meeting(x, y + 1, obj_pared))
{
	sprite_index = spr_ekeko_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_ekeko_kick;
		image_index = 11;
		image_speed = 0;
	}
	else
	{
		sprite_index = spr_ekeko_walk
	}
	
}

mask_index = spr_ekeko_walk



}




