//draws a filled circle using that radius and calculates the alpha based on the max radius. 
//and for each step it increases the radius by 1 and resets it back to the min value if it reaches above the max value

if (keyboard_check(ord("J")))

{
	
	 radiuses = radiuses + 2;
	
	//draw_circle_colour(x,y,minRadius,c_red,c_red,false);

	//for (var i=0;i<numCircles;++i)
	//{
	//cada frame aumenta 1px
    //radiuses[i] = radiuses[i] + 2;
	
	//si radio llega a maximo volver a minimo
	if (radiuses > maxRadius)
		radiuses = maxRadius
		//radiuses = minRadius;
    
    //var a = 1 - radiuses[i]/maxRadius;
	//var a = 1 - radiuses[i]/maxRadius;
    //draw_set_alpha(a*alphaIntensity);
	
	draw_set_alpha(0);
	draw_circle_colour(x,y,radiuses,c_yellow,c_yellow,false);
	
	draw_text(x, y -200, radiuses)



}



else
{
	alarm[0] = 2;
	
}
//}
draw_set_alpha(1);