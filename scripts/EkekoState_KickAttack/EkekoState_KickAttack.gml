// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EkekoState_KickAttack(){


//Gravedad
vsp = vsp + grv;



timer = 0;
	


sprite_index = spr_ekeko_kick;
image_speed = 1;


if(instance_exists(oCactus))
{
	

	// mirar en la direccion del oCactus 
	if (sign(oCactus.x - x) !=0) image_xscale = sign(oCactus.x - x)


	// direccion al cactus
	dir =  sign(oCactus.x - x);
}

//Velocidad
hsp = dir * 2; 



if (image_index > 7) 
	{
		hsp = 0;
		ekeko_invencible = 1;
	}

////INICIO ATTACK FX KICK ATTACK
//ATTACK FX
if (image_index > 4 && image_index <=5)

	{
		if(!alarm[3])
		{
		
			alarm[3] = 1;
		
		}
	}
///////////



if (animation_end(spr_ekeko_kick))
	{
		hsp = 0;
		state = EKEKOSTATE.WALK;
		
	}

/////COLISIONS

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
y = y + vsp;
/////FIN COLISIONS
	



	



}