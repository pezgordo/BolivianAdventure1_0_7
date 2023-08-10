//draw_set_color(c_white);
//draw_set_font(f_menu)
//draw_text(100,100, canjump);

//draw_text(100, 200, "state: " + string(state));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
draw_set_color(c_black);


//// Barra de salud
draw_sprite(spr_healthbar_fondo, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar_line, 0, healthbar_x, healthbar_y, (hp/hp_max)*healthbar_width, healthbar_height);

draw_sprite(spr_healthbar_marco, 0, healthbar_x, healthbar_y);

draw_sprite(spr_coca, 0, healthbar_x - 30, healthbar_y + 10);

////

draw_set_color(c_black);
draw_set_font(f_silver);

draw_text_transformed(healthbar_x - 70, healthbar_y - 5, global.vidas, 1.2, 1.2, 0);

draw_set_font(-1);


///// cruz3

/// 1
//if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 0) && (cruz3_4 == 0))
if (cruz_andina == 1)
{
	draw_sprite_ext(spr_cruz3, 0, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}


//2
//if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 0) && (cruz3_4 == 0))
if (cruz_andina == 2)
{
	draw_sprite_ext(spr_cruz3, 1, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//3
//if ((cruz3_1 == 0) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 0))
if (cruz_andina == 3)
{
	draw_sprite_ext(spr_cruz3, 2, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//4
//if ((cruz3_1 == 0) && (cruz3_2 == 0) && (cruz3_3 == 0) && (cruz3_4 == 1))
if (cruz_andina == 4)
{
	draw_sprite_ext(spr_cruz3, 3, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//5
//if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 0) && (cruz3_4 == 0))
if (cruz_andina == 5)
{
	draw_sprite_ext(spr_cruz3, 4, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//6
//if ((cruz3_1 == 0) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 1))
if (cruz_andina == 6)
{
	draw_sprite_ext(spr_cruz3, 5, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//7
//if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 0))
if (cruz_andina == 7)
{
	draw_sprite_ext(spr_cruz3, 6, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//8

//if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 0 && (cruz3_4 == 1)))
if (cruz_andina == 8)
{
	draw_sprite_ext(spr_cruz3, 7, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//9
//if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 0) && (cruz3_4 == 1))
if (cruz_andina == 9)
{
	draw_sprite_ext(spr_cruz3, 8, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//10
//if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 0))

if (cruz_andina == 10){
	draw_sprite_ext(spr_cruz3, 9, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//11
//if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 0))
if (cruz_andina == 11)
{
	draw_sprite_ext(spr_cruz3, 10, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//12
//if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 0) && (cruz3_4 == 1))
if (cruz_andina == 12)
{
	draw_sprite_ext(spr_cruz3, 11, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//13
//if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 1))
if (cruz_andina == 13)
{
	draw_sprite_ext(spr_cruz3, 12, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//14
//if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 1))
if (cruz_andina == 14)
{
	draw_sprite_ext(spr_cruz3, 13, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
}

//15
//if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 1))
if (cruz_andina == 15)
{
	shader_set(sh_glow);
	draw_sprite_ext(spr_cruz3, 14, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, image_blend, 1);
	shader_set_uniform_f(bloomIntensity, suma); //0 = off, 1 = a bit, 80 = extremely intens
	shader_reset();
	
	cruz_completa = 1;
	


}

/*
if (cruz_complete_sound == 60) 
{
	draw_sprite(spr_cruz3_completa, 0, display_get_gui_width()/2, display_get_gui_height()/2)
	//(instance_create_layer(view_xport[0], view_yport[0], "cruz3", obj_cruz3_completa))

}
*/




/*
///DEBUG

draw_text(200, 200, state_name);


draw_text(200, 220, "c vsp  " + string(vsp));
draw_text(200, 240, "c hsp  " + string(hsp));

draw_text(200, 280, "can jump:  " + string(canjump));
//draw_text(200, 280, "t  vsp  " + string(obj_teleferico_1.vsp));
//draw_text(200, 300,"t  hsp  " + string(obj_teleferico_1.hsp));


///X, Y de cam
*/
//draw_text(200, 400, "camera x: " + string(obj_camara.x));
//draw_text(200, 430, "camera y: " + string(obj_camara.y));
/*
//draw_text(200, 350, "Inst: " + string(tele_inst));

if (enteleferico = 1)
{
draw_text(200, 360, "En Teleferico");
}

if (onboard = 1)
	{
		draw_text(200, 380, "ON BOARD")
	}

/*
// DIBUJAR UN REDONDO BLANCO SI ESTA ENCIMA DE  PARED
if (place_meeting(x, y + vsp, obj_pared))
{
	//while (!place_meeting(x, y+sign(vsp), obj_pared))
	//{
	//	y = y + sign(vsp);
	//}
	//vsp= 0;
	draw_circle(200, 320, 10,0)
	
}

//DIBUJAR UN REDONDO ROJO SI ESTA COLISIONANDO CON PARED

if (place_meeting(x, y, obj_pared))
{
	//while (!place_meeting(x, y+sign(vsp), obj_pared))
	//{
		draw_circle_color(200, 340, 10, c_red, c_red, 0)
	//	y = y + sign(vsp);
	//}
	//vsp= 0;
	//draw_circle(200, 340, 10,0)
	
}

//DIBUJAR UN REDONDO AMARILLO SI ESTA ENCIMA DE TELEFERICO

if (place_meeting(x, y + vsp, obj_teleferico_1))
{
	//while (!place_meeting(x, y+sign(vsp), obj_pared))
	//{
		draw_circle_color(200, 360, 10, c_yellow, c_yellow, 0)
	//	y = y + sign(vsp);
	//}
	//vsp= 0;
	//draw_circle(200, 340, 10,0)
	
}
*/


