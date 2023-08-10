/// @description Insert description here
// You can write your code in this editor

if (instance_exists(oCactus))
{
if (oCactus.cruz_completa = 1)
	{
		shader_set(sh_glow);
		draw_self();
		shader_set_uniform_f(bloomIntensity, suma); //0 = off, 1 = a bit, 80 = extremely intense
//shader_set_uniform_f(bloomIntensity, ((window_mouse_get_x()-250)/1000)); // usually something like 1/512 (0.001)
//shader_set_uniform_f(bloomblurSize, 1/512);
//draw_surface(application_surface, 0, 0);
		shader_reset();
}

else
{
	draw_self()
}
}

//draw_text(x + 100, y -50,"estatua.alarm9= " + string(alarm[9]));
//draw_text(x + 100, y -90,"estatua_timer= " + string(statua_timer));


//if (dibujar_circulo = true) draw_circle(x + 100, y -20, 10, 0);