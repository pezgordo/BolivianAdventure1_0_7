if (alarm[0] == 0)
	{
		var inst = (instance_create_layer(self.x, self.y, "cruz3", obj_ekeko_fx_1));
		screen_shake(20, 15);
		alarm[0] = false;
	}