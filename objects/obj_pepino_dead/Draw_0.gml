/// @description Insert description here
// You can write your code in this editor
draw_self()

if place_meeting(x, y + vsp, obj_pothole)
{
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	
//!draw_self();

image_alpha = 0;

//draw_sprite_part(spr_pepino_jump, 1, 0, 0, 130, spriteH, x -40, y-65)
draw_sprite_part_ext(spr_pepino_dead, 1, 0, 0, 100, spriteH, x - (sprite_width / 2), y - (sprite_height / 2) + 15, image_xscale, 1, c_white, 1)

}