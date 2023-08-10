#region // Get player Input

if(hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);

	//Controller OFF if keyboard is pressed
	if (key_left) or (key_right) or (key_jump)
	{
		controller = 0;	
	}


	//Controller ON if controller is used
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0, gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}

}

else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

#endregion

#region
//Calcular Movimiento
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//Si aprietas spacio mientras el cactus esta tocando la pared , saltara a una velocidad de -7
if (place_meeting(x, y + 1, obj_pared) && (key_jump))
{
	vsp = -7;
	
}

// Colision HOrizontal
if (place_meeting(x + hsp, y, obj_pared))
{
	while (!place_meeting(x + sign(hsp), y, obj_pared))
	{
		x = x + sign(hsp);
	}
	hsp= 0;
}
x = x + hsp;
 
// Colision Vertical
if (place_meeting(x, y + vsp, obj_pared))
{
	while (!place_meeting(x, y+sign(vsp), obj_pared))
	{
		y = y + sign(vsp);
	}
	vsp= 0;
}
y = y + vsp;


//Animation
if (!place_meeting(x, y + 1, obj_pared))
{
	sprite_index = spr_cactus_jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_cactus_still
	}
	else
	{
		sprite_index = spr_cactus_run
	}
	
}

// sprite faces side thats moving
if (hsp != 0) image_xscale = sign(hsp);

#endregion