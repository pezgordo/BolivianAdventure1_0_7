



if (done == 0)
{
	
	vsp = vsp + grv;

	//alarm[0] = 60;



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
	
if (vsp > 0)
{
	if (place_meeting(x, y + vsp, obj_pared))
	{
		if (vsp > 0) done = 1;
		{
			done = 1;
			image_index = 1;
			//alarm[0] = 1;
			if(alarm[0] == -1) alarm[0]=60;
		}
		while (!place_meeting(x, y+sign(vsp), obj_pared))
		{
			y = y + sign(vsp);
		}
		vsp= 0;
	}
	y = y + vsp;
	
	
	//SI SE ENTRA AL HUECO
	//if (!place_meeting(x, y + vsp, obj_pared)) && (bbox_bottom > room_height) 
	//{
		
	//	if(alarm[0] == -1) alarm[0]= 60;
	//}
	//alarm[0] = 120;
	
}

if (global.vidas == 0)
{
	//global.vidas = -2;
	game_over_text = true;
}



}