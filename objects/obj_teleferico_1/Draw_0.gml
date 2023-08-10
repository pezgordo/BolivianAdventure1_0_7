//draw_self()

if (tpath = 1)
{
draw_sprite_ext(spr_teleferico_1_copy, 0, self.x, self.y, escala, escala, 0, c_white, image_alpha);
}

if (tpath = 2)
{
draw_sprite_ext(spr_teleferico_1_copy, 0, self.x, self.y, -(escala), escala, 0, c_white, image_alpha);
}

////
if (montable == 1) 
{
	draw_set_alpha(0.5);
	//draw_circle_color(x + (26 * escala), y + (128 * escala), (6 * escala), c_green, c_lime, 0);
	
	if (tpath = 1)
	{
		draw_rectangle_color(x + ((42-93) * escala), y + ((123-28) * escala), x + ((111-93) * escala), y + ((142-27) * escala), c_green, c_green, c_lime, c_lime, 0); 
	}
	
	if (tpath = 2)
	{
		draw_rectangle_color(x + ((42-62) * escala), y + ((123-28) * escala), x + ((111-62) * escala), y + ((142-27) * escala), c_green, c_green, c_lime, c_lime, 0); 
	}
	
	draw_set_alpha(1);
}

else 
{
	draw_set_alpha(0.5);
	//draw_circle_color(x + (6 * escala), y + (128 * escala), (6 * escala), c_orange, c_red, 0);
	
	
	if (tpath = 1)
	{
		draw_rectangle_color(x + ((42-93) * escala), y + ((123-28) * escala), x + ((111-93) * escala), y + ((142-27) * escala), c_red, c_red, c_red, c_red, 0); 
	}
	
	if (tpath = 2)
	{
		draw_rectangle_color(x + ((42-62) * escala), y + ((123-28) * escala), x + ((111-62) * escala), y + ((142-27) * escala), c_red, c_red, c_red, c_red, 0); 
	}
	
	
	draw_set_alpha(1);
}

//draw_text(x + 50, y + 50, string(montable));
//draw_circle(x, y + 139, 10, 0);



/*
////
if (montable = true) 
{
	draw_set_alpha(0.5);   
	draw_rectangle_color(x + ((42-93) * escala), y + ((123-22) * escala), x + ((111-93) * escala), y + ((142-22) * escala), c_green, c_green, c_lime, c_lime, 0);  
	//draw_circle_color(x + (26 * escala), y + (128 * escala), (6 * escala), c_green, c_lime, 0);
	draw_set_alpha(1);
}

else 
{
	draw_set_alpha(0.5);
	draw_rectangle_color(x + ((42-93) * escala), y + ((123-22) * escala), x + ((111-93) * escala), y + ((142-22) * escala), c_red, c_red, c_red, c_red, 0); 
	//draw_circle_color(x + (6 * escala), y + (128 * escala), (6 * escala), c_orange, c_red, 0);
	draw_set_alpha(1);
}
*/

/*
////
if (montable = true) 
{
	draw_set_alpha(0.5);
	draw_circle_color(x + (26 * escala), y + (128 * escala), (6 * escala), c_green, c_lime, 0);
	draw_set_alpha(1);
}

else 
{
	draw_set_alpha(0.5);
	draw_circle_color(x + (6 * escala), y + (128 * escala), (6 * escala), c_orange, c_red, 0);
	draw_set_alpha(1);
}

/*
///
draw_circle_color(x, y, 10, c_blue, c_blue, 0);

draw_circle_color(x, y + 120, 10, c_orange, c_orange, 0);

/////


////DEBUG
draw_text(x + 50, y + 30, string("x "  + x  ,"y " + y));
draw_text(x + 50, y + 30, "x: " + string(x) + " y: " + string(y));
draw_text(x + 50, y + 50, string(path_position));
draw_text(x + 50, y + 70, string(escala));
//draw_text(x + 50, y + 90, string(self.closest_position));


if (mask_index = spr_empty) draw_rectangle_color(x + 21 -93, y + 144 -26, x + 133 -93, y + 152 -26, c_red, c_red, c_red, c_red, 0)

if (mask_index = spr_teleferico_1) draw_rectangle_color(x + 21 -93, y + 144 -26, x + 133 -93, y + 152 -26, c_green, c_green, c_green, c_green, 0)	


if (instance_exists(oCactus))
{
	
	
	
	

	if (round(oCactus.y + (oCactus.sprite_height/2)) > (self.y + 125)) 
		{
		
			draw_rectangle_color(x + 21 -93, y + 144 -26, x + 133 -93, y + 152 -26, c_red, c_red, c_red, c_red, 0)
			//mask_index = spr_empty
		}
		else 
		{
			//mask_index = spr_teleferico_1
			draw_rectangle_color(x + 21 -93, y + 144 -26, x + 133 -93, y + 152 -26, c_green, c_green, c_green, c_green, 0)	
		}
		
}
*/
//draw_rectangle_color(x + 21 -93, y + 144 -26, x + 133 -93, y + 152 -26, c_yellow, c_yellow, c_yellow, c_yellow, 0)