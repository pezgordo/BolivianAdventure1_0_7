/// @description Insert description here
// You can write your code in this editor

//application_surface_draw_enable(false);
bloomIntensity = shader_get_uniform(sh_glow, "intensity");
//bloomblurSize = shader_get_uniform(sh_glow, "blurSize");
suma = 0.0;
veloc = 0.05;
//text = "prueba";
text_2 = "AUN NO CONSEGUISTE LAS 4 PIEZAS DE LA CRUZ ANDINA!! \n VUELVE CUANDO TENGAS LAS 4 PIEZAS";
text = "BUEN TRABAJO! CONSEGUISTE LAS 4 PIEZAS!! \n TEN CUIDADO EN EL PROXIMO NIVEL!!!";

statua_timer = room_speed * 2;

timer_start = false;

dibujar_circulo = false;