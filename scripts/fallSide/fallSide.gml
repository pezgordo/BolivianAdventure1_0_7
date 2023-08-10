
///@description fallSides(xSum, ySum)
///@funtion fallSides
///@param xSum
///@param ySum

function fallSide(){

var sum = argument0;
var ySu = argument1;

var su = 0;

while(place_meeting(x + su, y + 1, obj_pared))
{
	if(abs(x + su - room_width) > room_width)
	{
		return -1;	
	}
	su += sum;
}

var ySum = 1;

while(!place_meeting(x + su + sign(su) *5, y + ySum, obj_pared))  //if therse not a floor
{
	if(abs(y + ySum -room_height) > room_height) 
	{
		return -1;	
	}
	ySum += ySu;
}

return point_distance(x + su + sign(su) *5 , y + ySum, oCactus.x, oCactus.y);





}
