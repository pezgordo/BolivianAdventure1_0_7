/// @description Insert description here
// You can write your code in this editor


//application_surface_draw_enable(false);
bloomIntensity = shader_get_uniform(sh_glow, "intensity");
//bloomblurSize = shader_get_uniform(sh_glow, "blurSize");
suma = 0.0;
veloc = 0.05;

//audio_play_sound(snd_cruz_completa, 11, 0);


image_index = 0;
image_speed = 1;

xescala = 1;
yescala = 1;

cruz_alpha = 1;