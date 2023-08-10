// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ZebraState_Hit(){
	
///GRAVEDAD

//vsp = vsp + grv;

alarm[0] = 35;



if (instance_exists(oCactus)){
direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)

//hsp = lengthdir_x(8, direction);
hsp = 8 * direc;
}


//vsp = -6;
/////

// Colision HOrizontal
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp= -hsp;
	state = ZEBRASTATE.ROAM;
}

// Colision HOrizontal con cemento
if (place_meeting(x + hsp, y, obj_cemento))
{
	while (!place_meeting(x + sign(hsp), y, obj_cemento))
	{
		x = x + sign(hsp);
	}
	hsp= -hsp;
	state = ZEBRASTATE.ROAM;
}




x = x + (hsp);
 
 
// Colision Vertical
if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y+sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
		
	}
	//sprite_index = spr_zbr_walk;
	vsp= 0;
	state = ZEBRASTATE.ROAM;
}

// Colision Vertical con cemento
if (place_meeting(x, y + vsp, obj_cemento))
{
	while (!place_meeting(x, y+sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
		
	}
	//sprite_index = spr_zbr_walk;
	vsp= 0;
	state = ZEBRASTATE.ROAM;
}




y = y + vsp;

//if (animation_end()) 
//{ 
//	sprite_index = spr_zbr_walk;
//	state = ZEBRASTATE.ROAM;
//}
//////


//if (sign(hsp) != 0) image_xscale = sign(hsp);

///

//ANIMATION
if (!place_meeting(x, y + 1, obj_pared))
{
	sprite_index = spr_zbr_hit;
	image_speed = 0;
		if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_zbr_still
	}
	else
	{
		sprite_index = spr_zbr_walk
	}
	
}


}