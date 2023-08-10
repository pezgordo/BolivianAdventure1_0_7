// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@description jumpSides(sum)
///@function jumpSides
///@param sum

function jumpSides(){ //CALCULATES WHICH SIDE IS FASTER TO GET TO THE PLAYER JUMPING

var sum = argument0;
var su = 0; 

while(!place_meeting(x + su, y, obj_pared) && (place_meeting(x + su, y + 1, obj_pared)))
{
	if (abs(x + su - room_width) > room_width)
	{
	return -1;	
	}
	su += sum;
}

return point_distance(x + su, y = jumpSpd, oCactus.x, oCactus.y);
}