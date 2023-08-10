// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EkekoState_Chase(){
	
ekeko_invencible = 0;
	

//Gravedad
vsp = vsp + grv;

if instance_exists(oCactus)
{
	
	
	
////PERSEGUIR

// caminar en direccion al cactus
dir =  sign(oCactus.x - x);

//Velocidad
hsp = dir * 2; //random_range(1, 4);


// mirar en la direccion del oCactus 
if (sign(oCactus.x - x) !=0) image_xscale = sign(oCactus.x - x)

//// Movimiento



// Colision HOrizontal
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	vsp = -8;
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
y = y + vsp;



////STATE CHANGE

if point_distance(x, y, oCactus.x, oCactus.y) > 400 //&& point_distance(x, y, oCactus.x, oCactus.y) >200
	{
		
		state = EKEKOSTATE.WALK;
		
	
	}

/////

if point_distance(x, y, oCactus.x, oCactus.y) < 250

{
	var jump = EKEKOSTATE.JUMPATTACK;
	var kick = EKEKOSTATE.KICKATTACK;

	vsp = -4;
	state = choose(jump, kick);
	//state = kick;
	
}




/////






//ANIMATION
if (!place_meeting(x, y + 1, obj_pared))
{
	//sprite_index = spr_zbr_jump;
	//image_speed = 0;
	//if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
	//sprite_index = spr_zbr_hit;
	//image_speed =1;
	
	sprite_index = spr_ekeko_jump;
	image_speed = 0;
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
		sprite_index = spr_ekeko_skipping
	}
	
}


}
else
{
	state = EKEKOSTATE.WALK;
}



mask_index = spr_ekeko_walk
}