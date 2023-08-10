

/// UPDATE CAMERA

//Update destination

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
}

//update object position (smooth movement)

x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep camera center inside room

x = clamp(x, view_w_half + buff, room_width - view_w_half -buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);


x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);

shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));


//update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);


///FONDO
if (layer_exists("Mountains"))
{
	layer_x("Mountains", (x/2) - 500);
	
	if (room == primer_nivel) layer_y("Mountains", 1000)//y + 10);//(y/4)+600);
	
	else if (room == segundo_nivel) layer_y("Mountains", 900)
		
		
	else {
		layer_y("Mountains", (y/4)+500);	
	}
	
	
}


///CASAS

if (layer_exists("sprites_pared"))
{
	layer_x("sprites_pared", x/4);
}

if (layer_exists("sprite_casas"))
{
	layer_x("sprite_casas", x/4);
}
if (layer_exists("sprite_pegadocasas"))
{
	layer_x("sprite_pegadocasas", x/4);
}


///PISO_1 & llama

{
	layer_x("encima_piso_de_tierra", x/4.5);
}


{
	layer_x("piso_de_tierra", x/4.5);
}

{
	layer_x("llama", x/5);
}

