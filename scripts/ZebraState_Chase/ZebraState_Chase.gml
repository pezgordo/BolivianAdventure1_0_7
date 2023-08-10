// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ZebraState_Chase(){

if instance_exists(oCactus)
{
////PERSEGUIR

// caminar en direccion al cactus
dir =  sign(oCactus.x - x);

//Velocidad random del 1 al 4
if (x = oCactus.x) dir = 0;

hsp = dir * random_range(2, 4);



// mirar en la direccion del oCactus 
if (sign(oCactus.x - x) !=0) image_xscale = sign(oCactus.x - x)

///
if (oCactus.y < self.y) && (x >= oCactus.x - 20 && x <= oCactus.x + 20)
	{
		hsp = 0;
	}

///


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
	hsp = 0;
	
	//hsp= -hsp;
	
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

//COLISION VERTICAL CON CEMENTO
if (place_meeting(x, y + vsp, obj_cemento))
{
	while (!place_meeting(x, y+sign(vsp), obj_cemento))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}

y = y + vsp;


/////STATE SWITCH

if point_distance(x, y, oCactus.x, oCactus.y) < 120
	{
		state = ZEBRASTATE.ATTACK;	
	}


if point_distance(x, y, oCactus.x, oCactus.y) > 300
	{
		state = ZEBRASTATE.ROAM;	
	}

/////


//ANIMATION
if (!place_meeting(x, y + 1, obj_pared))
{
	//sprite_index = spr_zbr_jump;
	//image_speed = 0;
	//if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
	grounded = false;
	sprite_index = spr_zbr_hit;
	image_speed =1;
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


}
else
{
	state = ZEBRASTATE.ROAM;
}





}