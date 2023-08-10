
function ZebraState_Roam(){


///AFRAID OF HEIGHTS
if (grounded) && (afraidofheights) && (!place_meeting(x+sprite_width / 2,y+1,obj_pared))
{

hsp = -hsp;
	
}



/// Mirar para el lado que camina
if (hsp != 0) image_xscale = sign(hsp);
else
{
hsp = random_range(1,4)	
}

//// Movimiento

//Gravedad
vsp = vsp + grv;

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
}/// COLISION VERTICAL CON CEMENTO
if (place_meeting(x, y + vsp, obj_cemento))
{
	while (!place_meeting(x, y+sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}

y = y + vsp;



///// STATE SWITCH
if (instance_exists(oCactus))
{
	if point_distance(x, y, oCactus.x, oCactus.y) < 300 //&& point_distance(x, y, oCactus.x, oCactus.y) >200
		{
		
			state = ZEBRASTATE.CHASE;
		
	
		}
}
/////



//ANIMATION
if (!place_meeting(x, y + 1, obj_pared))
{
	grounded = false;
	sprite_index = spr_zbr_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
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




//else
//{
//	state = ZEBRASTATE.ROAM;	
//}
}