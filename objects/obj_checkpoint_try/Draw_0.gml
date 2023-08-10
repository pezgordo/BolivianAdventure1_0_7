draw_sprite(sprite_index, image_index, x, y);


if (sprite_index = spr_checkpoint_lit)
{
	image_speed = 1;	
	
	shader_set(sh_glow_checkpoint);
	draw_self();
	//shader_set_uniform_f(bloomIntensity, suma);
	shader_set_uniform_f(bloomIntensity, intensity);
	
	shader_reset();
}
//sprite_index = spr_checkpoint