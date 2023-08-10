/// @description Insert description here
// You can write your code in this editor

draw_self();

if (flash > 0)
{
	flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}


draw_sprite_ext(spr_obstaculo_minibus_llanta1, 0, x + 74, y + 146, 1, 1, rotate_speed, c_white, 1)

draw_sprite_ext(spr_obstaculo_minibus_llanta1, 0, x + 225, y + 150, 1, 1, rotate_speed, c_white, 1)