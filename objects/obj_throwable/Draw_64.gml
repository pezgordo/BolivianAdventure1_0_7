//draw_sprite(spr_throwable_marco, 0, 50,100)

if (stock > 0) draw_sprite_ext(spr_wpn_dinamite1, 0, 50, 120, 1.2, 1.2, 0, c_white, 1)
if (stock == 0) draw_sprite(spr_throwable_nada, 0, 50,120)

draw_set_color(c_black);
draw_set_font(f_silver);
draw_text(100, 104, stock);


///MONEDAS

draw_sprite(spr_moneda64, 0, 16,16)

if instance_exists(oCactus)
{
	draw_text(100, 34, oCactus.coins)
	//draw_text_color(100, 50, oCactus.coins, c_black, c_black, c_black, c_black, 1)
}