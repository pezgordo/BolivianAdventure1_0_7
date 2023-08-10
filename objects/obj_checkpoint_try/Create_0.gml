sprite_index = spr_checkpoint;
image_speed = 0;
image_index = 0;

//application_surface_draw_enable(false);
bloomIntensity = shader_get_uniform(sh_glow_checkpoint, "intensity");
//bloomblurSize = shader_get_uniform(sh_glow, "blurSize");
suma = 0.0;
veloc = 0.01;