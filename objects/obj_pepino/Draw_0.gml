/// @description Insert description here
// You can write your code in this editor
/*
draw_self();

if (flash > 0)
{
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

if place_meeting(x, y + vsp, obj_pothole)
{
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	

image_alpha = 0;

draw_sprite_part(spr_pepino_jump, 1, 0, 0, sprite_get_width(spr_pepino_jump), spriteH, x -40, y-65)

}
*/

//draw_self();

//shader_set(sh_glow2);
draw_self();
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
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	
//!draw_self();

image_alpha = 0;

//draw_sprite_part(spr_pepino_jump, 1, 0, 0, 130, spriteH, x -40, y-65)
draw_sprite_part_ext(spr_pepino_jump, 1, 0, 0, 112, spriteH, x - (sprite_width / 2), y - (sprite_height / 2) + 15, image_xscale, 1, c_white, 1)

}


///

//draw_rectangle(bbox_left, bbox_top,bbox_right,bbox_bottom, 1)


//////DEBUGG

//draw_text(x, y, "HP: " +string(hp));