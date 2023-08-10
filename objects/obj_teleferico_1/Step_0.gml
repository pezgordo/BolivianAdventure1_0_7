

//ESCALAR DEPENDIENDO LA POSICION 

input_val = path_position;

if (input_val < 0.045)
{
	var range_min = 0.00;
	var range_max = 0.045;
	escala = (((input_val - range_min) *100) / (range_max - range_min)) / 100;
}



if ((input_val > 0.045) && (input_val < 0.955))
{
	escala = 1;
}


if (input_val > 0.93) && (input_val < 0.955)
{
	if (place_meeting(x, y -2, oCactus)) image_alpha = (sin(current_time/30)+1)/2; 	
	else
	{
	image_alpha = 1;	
	}
}


if (input_val > 0.955)
{
	var range_min = 0.955;
	var range_max = 1.00;
	escala = 1 - ((((input_val - range_min) *100) / (range_max - range_min)) / 100);
	
}
//if (escala > 1) escala = 1

//



//if ((escala < 1) && path_position < 0.10) escala = escala + 0.002;
if (escala == 1) 
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
			
			if (montable == 1) mask_index = spr_teleferico_1_copy;
			else
			{
				mask_index = spr_empty;	
				image_alpha = 1;
			}
		}
		
}


if (tpath = 2) image_xscale = -1;


/*
///MASK

if (montable == 1) mask_index = spr_teleferico_1;
else
{
	mask_index = spr_empty;	
	image_alpha = 1;
}
*/
