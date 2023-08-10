x = x + hsp;




//alarm[0] = (room_speed * 1);

//alarm[0] = room_speed;


if (object_exists(oCactus))
{
	if (alarm[0] == -1)
	{
		alarm[0] = (room_speed);
	
	}
}

if (instance_exists(oCactus))
{
	if (round(oCactus.y + (oCactus.sprite_height/2)) > y) mask_index = -1
	else mask_index = spr_paloma1

}

//else 
//{

//instance_destroy()

//}