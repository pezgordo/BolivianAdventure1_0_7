draw_self();

//if (state = ZEBRASTATE.ROAM) draw_circle_color(x,y,20, c_lime, c_green, 0)
//if (state = ZEBRASTATE.CHASE)draw_circle_color(x,y,20, c_yellow, c_yellow, 0) 
//if (state = ZEBRASTATE.ATTACK) draw_circle_color(x,y,20, c_red, c_red, 0)

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
	
//!draw_self();

image_alpha = 0;

//draw_sprite_part(spr_zbr_hit, 1, 0, 0, 130, spriteH, x - (sprite_width / 2), y - (sprite_height / 2))
draw_sprite_part_ext(spr_zbr_hit, 1, 0, 0, 115, spriteH, x - (sprite_width / 2), y - (sprite_height / 2), image_xscale, 1, c_white, 1)
}
//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 1)