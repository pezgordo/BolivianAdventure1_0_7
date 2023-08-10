/// Barra de salud
draw_sprite(spr_healthbar_fondo_ekeko, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar_line, 0, healthbar_x, healthbar_y, (hp/hp_max)*healthbar_width, healthbar_height);

draw_sprite(spr_healthbar_marco_ekeko, 0, healthbar_x, healthbar_y);



draw_set_font(f_silver);
draw_set_color(c_black);

draw_text(healthbar_x, healthbar_y - 30, "EKEKO BOSS")

//draw_sprite(spr_coca, 0, healthbar_x - 30, healthbar_y + 10);

