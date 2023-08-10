/*if (place_meeting(x, y + vsp, obj_paloma1)) && vsp > 0
{
	
	if (bbox_top >= other.bbox_bottom)
	{
		
		
		while (!place_meeting(x, y+sign(vsp), obj_paloma1))
		{
		y = y + sign(vsp);
		}
		vsp= -11;
		with(other)
		{
			instance_destroy();
		}
	}
	//state = PLAYERSTATE.FREE;
}
*/

//if (round(y + sprite_height/2) > other.y - 60) && vsp > 0

//if (bbox_bottom == other.bbox_top)
//{

if (place_meeting(x, y + vsp, obj_paloma1)) && vsp > 0

{

	vsp = -11;
	audio_play_sound(snd_splash_paloma, 10, 0)

	with(other)
	{
		instance_destroy()
	}


	with(instance_create_layer(x, y + 34, "enemy", obj_fx_paloma_splash))
	{

	//animation_end(instance_destroy())


	}

}
	
//}



