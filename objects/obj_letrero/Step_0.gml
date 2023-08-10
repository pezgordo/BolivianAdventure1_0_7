key_attack = keyboard_check_pressed(ord("H"));




if (instance_exists(oCactus)){

	if (point_in_circle(oCactus.x, oCactus.y, x, y, 128)) && (!instance_exists(obj_text)) &&  (key_attack) && (no_leido == 1)
	{
		with (instance_create_layer(x + 24, y - 128, "balas", obj_text))
		{
		text = other.text;
		length = string_length(text);
		}
	
		with (obj_camara)
		{
		follow = other.id;	
		}
	
		no_leido = 0;
		
		
	}
}

if (no_leido == 1)
{

	if (contador_atras == 0) contador = contador + 0.02;

	if (contador == 5) contador_atras =1;

	if  (contador_atras == 1) contador = contador - 0.02;

	if (contador == 4.5) contador_atras = 0;
}

/*
if (contador == 0) 
{
	//contador = contador + 1;
	alarm[0] = 1;
}


if (contador == 60)
{
	alarm[1] = 1;
}

