draw_self();



if (ekeko_flash > 0)
{
	ekeko_flash--;
	ekeko_invencible = 1;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

if(ekeko_flash < 0)
{
	ekeko_flash = 0;	
}

/*
draw_circle(x, y, 10, 0);

draw_text(x - 60, y - 80, "hsp = " + string(hsp));
draw_text(x - 60, y - 60, "vsp = " + string(vsp));
draw_text(x - 60, y - 40, "timer = " + string(timer));


draw_text(x - 60, y - 20, "dist = " + string(dist));

draw_text(x - 60, y -120, image_xscale);

draw_text(x - 60, y + 20, "y= " + string(bottom_y));
draw_text(x - 60, y + 40, "cy= " + string(cactus_bottom_y));
*/
//draw_text(x - 60, y - 80, "invencible = " + string(ekeko_invencible));
//propiedades de la barra de salud en el GUI

//draw_text(x - 60, y - 100, state_name);