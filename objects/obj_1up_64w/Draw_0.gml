
life_up_x += 0.1;
life_up_y += 0.1;
life_alpha -= 0.02;
	
	
draw_sprite_ext(spr_1up_64w, 0, x , y , life_up_x, life_up_y, 0, c_white, life_alpha);
	
	
	
if (life_alpha <= 0) 
{
		
	instance_destroy();
	//life_up = 0;
}
