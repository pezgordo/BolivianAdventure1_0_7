// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EkekoState_Air_Chase(){

hsp = (left + right) * spd;

calculateInput();

hsp = (left + right) * spd;

image_xscale = sign(hsp + 0.00001);


//Move

//hsp = (right + left) * spd;


if(vsp < jumpSpd)
{
	vsp = vsp + grv;
}


hsp *= xMove;


if(!place_free(x, y+1))
{
	vsp = jump * jumpSpd;
}




//V collision

if(place_meeting(x, y + vsp, obj_pared))
{

	while(!place_meeting(x, y + sign(vsp), obj_pared))
	{
		
		y += sign(vsp)	
	}
	vsp = 0;
}

//H collision

if(place_meeting(x + hsp, y, obj_pared))
{

	while(!place_meeting(x + sign(hsp), y , obj_pared))
	{
		
		x += sign(hsp)	
	}
	hsp = 0;
}

x += hsp;
y += vsp;

////CHANGE STATE
if (instance_exists(oCactus))
{
	
	
	distancia = point_distance(x, y, oCactus.x, oCactus.y);
	
	//round(oCactus.y + (oCactus.sprite_height/2))
	
	
	bottom_y = round(self.y + self.sprite_height / 2);
	cactus_bottom_y = round(oCactus.y + oCactus.sprite_height / 2);
	
	//if(place_meeting(x, y+2, obj_pared)) && (y = oCactus.y) && (dist < 200) 
	
	
	//if((place_meeting(x, y+1, obj_pared)) && bottom_y <= cactus_bottom_y + 40 && bottom_y >= cactus_bottom_y - 40)
	if (y < oCactus.y) && distancia < 400
	
	{
		state = EKEKOSTATE.CHASE;
	}
	
}
	//if (oCactus.y > y - 200)
	//if(place_meeting(x + hsp * 40, y, oCactus))
	//{
		//if (point_distance(x, y, oCactus.x, oCactus.y) < 600)  // < 300 && point_distance(x, y, oCactus.x, oCactus.y) >200
			//{
				//alarm[0] = -1;
			//	state = EKEKOSTATE.CHASE;
		
	
			//}
	//}
	
	//else if (oCactus.y < y - 200)
//	if (point_distance(x, y, oCactus.x, oCactus.y > 400))
//	{
		//alarm[0] = -1;
//		state = EKEKOSTATE.WALK;	
//	}
//}
////


///ANIMATION
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

mask_index = spr_ekeko_walk;

}