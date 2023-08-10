//ESCALAR DEPENDIENDO LA POSICION 

input_val = path_position;

if (input_val < 0.105)
{
	var range_min = 0.00;
	var range_max = 0.105;
	escala = (((input_val - range_min) *100) / (range_max - range_min)) / 100;
	//image_alpha = (sin(current_time/30)+1)/2; 
	image_alpha = 1;
}

if ((input_val > 0.105) && (input_val < 0.89))
{
	escala = 1;
	image_alpha = 1;
		//image_alpha = (sin(current_time/300)+1)/2; 
}


if (input_val > 0.84) && (input_val < 0.89)
{
	if (place_meeting(x, y -2, oCactus)) image_alpha = (sin(current_time/30)+1)/2; 	
	else
	{
	image_alpha = 1;	
	}
}


if (input_val > 0.89)
{
	var range_min = 0.89;
	var range_max = 1.05;
	//var range_max = 1.00;
	escala = 1 - ((((input_val - range_min) *100) / (range_max - range_min)) / 100);
	image_alpha = 1;
	
}

/*
if (input_val = 0.105)
{
	//flash = 10;	
	alarm[1] = 1;
}
*/

//if (escala > 1) escala = 1

//



//if ((escala < 1) && path_position < 0.10) escala = escala + 0.002;
if (escala = 1) 
{
	if (tpath = 1) depth = 1600;
	if (tpath = 2) depth = 1900;
	//depth = 1500;
	montable = 1;
	//escala = 1;
}
if (escala < 1)
{
	if (tpath = 1) depth = 2990;
	if (tpath = 2) depth = 2995;
	//depth = 2700;
	montable = 0;
}

/*
if (instance_exists(oCactus))
{
	if (round(oCactus.y + (oCactus.sprite_height/2)) > (self.y - 30)) 
	{
		mask_index = spr_empty
	}
	else 
	{
		mask_index = spr_teleferico_1
	
	}

}
*/

if (instance_exists(oCactus))
{
	//show_debug_message("(X Scale: " + string(image_xscale) + ", Y Scale: " + string(image_yscale) + ")");

	if (round(oCactus.y + (oCactus.sprite_height/2)) > (self.y + 129)) 
		{
			mask_index = spr_empty;
			//mask_index = spr_teleferico_1
		}
		
		else 
		{
				//mask_index = spr_empty
			
			mask_index = spr_teleferico_1_copy;
	
		}
		
}


if (tpath = 2) image_xscale = -1;
