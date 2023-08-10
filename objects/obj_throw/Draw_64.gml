


//}
//draw_set_alpha(1);

if (obj_throwable.stock > 0)
{
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
		draw_circle_colour(x + (sprite_width / 2) * 0.8 ,y + (sprite_height / 2) * 0.8,radiuses,c_dkgray,c_red, false);
	
		//draw_text(x, y  -100, radiuses)



	}



	else
	{
		alarm[0] = 2;
	
	}
	
	draw_sprite_ext(spr_throw5, 0, x, y, 0.8, 0.8, 0, c_white, 0.5);
	//draw_rectangle(x -22, y-11, x + 128, y + 128, 1);
}