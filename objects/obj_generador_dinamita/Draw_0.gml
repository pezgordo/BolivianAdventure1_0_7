draw_self()


draw_set_color(c_white);

draw_text(x + 64, y, "collected: " + string(collected));

draw_text(x + 64, y + 20, "Timer: " + string(t2));



if (!instance_exists(inst_actual))
	{
		draw_circle_color(x, y, 20, c_red, c_red, 0)
		draw_text(x + 64, y + 50, "i actual: " + string(inst_actual));
	}