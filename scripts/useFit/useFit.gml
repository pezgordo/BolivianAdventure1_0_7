// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@description useFit(leftFit, rightFit)
///@function useFit
///@param leftFit
///@param rightFit

function useFit(){

var leftFit = argument0;
var rightFit = argument1;

var fitSum = leftFit + rightFit;

if(fitSum == -2) //both wrong , both went past the room
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
else if(leftFit == -1 || rightFit == -1)
{
	if(leftFit == -1) 
	{
		right = 1;
		left = 0;
	}
	else if(rightFit == -1)
	{
		left = -1;
		right = 0;
	}
}
else
{
	var goLeft = (leftFit < rightFit);

	if(goLeft)
	{
	left = -1;
	right = 0;
	}
	else
	{
		right = 1;
		left = 0;
	}
///	
}

}