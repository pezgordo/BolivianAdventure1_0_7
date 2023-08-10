if (game_over_text = true)
{

	draw_set_font(f_game_over);
	draw_set_color(c_black);
	draw_text(300, 100, "GAME OVER");
	
		//if(instance_exists(oCactus))
		////	{
			//	draw_text(100, 200,texto_pausa);
			//}
		draw_set_font(-1);
}