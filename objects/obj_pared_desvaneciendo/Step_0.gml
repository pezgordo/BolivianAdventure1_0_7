if (place_meeting(x, y-1, oCactus))
{
	image_speed=1;
	
}
else
{
	image_speed=0;	
}


if (image_index >= 6)
{
	image_speed = 1;
	mask_index = spr_empty;
	
}

if (image_index == 6) audio_play_sound(snd_cemento_break, 8, 0)

