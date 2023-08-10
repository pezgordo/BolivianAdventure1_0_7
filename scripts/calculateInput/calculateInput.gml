
function calculateInput(){

var margin = hsp + sign(hsp) * 5; ///margin by wich the ai checks if theres something in this place (before it reaches something)
var above = false; //if the ai is above or below the player

xMove = 1; //allows the movement in the x direction
jump = 0; // ai will not jump

var xSum = 2;
var ySum = 5;

if(!place_free(x + hsp * 0.5, y + 1) && (place_free(x + margin, y))) //check if there is a wall or floor in front of the ai && if its free at x + margin
{

	if(oCactus.y < y) //ENEMY IS BELOW THE PLAYER
	{
		var leftFit = jumpSides(-xSum);
		var rightFit = jumpSides(xSum);
		
		useFit(leftFit, rightFit);
	
	}
	else if (oCactus.y > y) //ENEMY IS ABOVE THE PLAYER
	{
		above = true;
		
		var leftFit = fallSide( -xSum, ySum);
		var rightFit = fallSide(xSum, ySum);
		
		useFit(leftFit, rightFit);
	}
	else //ENEMY IS AT THE SAME HEIGHT
	{
		var goLeft = (oCactus.x < x);
		
		if(goLeft)
		{
		right = 0;
		left = -1;
		}
		else
		{
		right = 1;
		left = 0;
		
		}
		
	}

}
else if(lineTrace(oCactus) && abs(oCactus.x - x) < 90)
{
xMove = 0;	
}

if(!place_free(x, y+1) && place_free(x + hsp, y + 1) && oCactus. y <= y)
{
jump = -1;

}
else if(!place_free(x + margin, y))
{
jump = -1;
xMove = 0;
}


}
