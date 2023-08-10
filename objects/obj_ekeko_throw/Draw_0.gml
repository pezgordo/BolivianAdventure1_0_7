





//draw_sprite(sprite_index, image_index, x, y);









///DRAW WARNING LIGHT
//draw_sprite(spr_hip_warning_light, 0, x, y);



// Set the color of the warning light to red


// Draw a transparent red circle around the object to enhance the warning effect

if (timer > 15) 
{
	draw_set_color(c_red);
	draw_set_alpha(0.3);
	draw_circle(x, y, sprite_width / 2, false);
	draw_set_alpha(1);
}

draw_sprite_ext(objetos, 0, x, y, cara, 1, rotacion, c_white, 1);
draw_text(x, y, timer)