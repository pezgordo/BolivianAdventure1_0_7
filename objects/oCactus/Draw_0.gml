draw_self();

//shader_set(sh_glow2);
//draw_self();
//shader_reset();




	
	



if (flash > 0)
{
	flash--;
	
	shader_set(sh_white);
	draw_self();
	shader_reset();
}







/*
//////////
// Colision Vertical con pared
if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y+sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}
*/

///////


//si se cae al hueco, poner alpha 0 y crear un sprite que se reduce en tamano
if place_meeting(x, y + vsp, obj_pothole)
{
	//image_alpha = 0;
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	
//!draw_self();

image_alpha = 0;

//draw_sprite_part(spr_cactus_jump, 1, 0, 0, 80, cactusH, x -40, y-65)



draw_sprite_part_ext(spr_cactus_jump, 1, 0, 0, 80, cactusH, x - (sprite_width / 2), y - (sprite_height / 2), image_xscale, 1, c_white, 1)




//draw_sprite_part(spr_cactus_jump, 1, 0, 0, 80, cactusH,x - (sprite_width / 2), y - (sprite_height / 2))





}

//draw_text(x + 100, y , "cruz_completa: " + string(cruz_andina))
//draw_text(x + 100, y + 20, "key_attack= " + string(key_attack))



//////

//draw_circle_color(x,round(oCactus.y + (oCactus.sprite_height/2)), 4, c_green, c_green, 0);

//round(oCactus.y + (oCactus.sprite_height/2))



///

//draw_rectangle(bbox_left, bbox_top,bbox_right,bbox_bottom, 1)
/*
draw_set_font(f_silver);

draw_text(x + 40, y, "onboard= " + string(onboard));
draw_text(x + 40, y + 30, "vsp= " + string(vsp));
draw_text(x + 40, y + 60, "hsp= " + string(hsp));
draw_text(x + 40, y + 90, "room " + string(room));

draw_set_font( -1);
*/
/*

//STROBE LIGHT

if (alarm[7] <= 0) {
    //draw_clear_alpha(c_black,0.5); // clear the screen with a semi-transparent black color
	shader_set(sh_white);
	draw_self();
	shader_reset();
}
else {
    //draw_clear_alpha(c_white,0.1); // clear the screen with a semi-transparent white color
	

	draw_self();
	
	
}



