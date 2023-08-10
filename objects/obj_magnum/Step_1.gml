/// @description Insert description here
// You can write your code in this editor

x = obj_cactus.x + 2 ;
y = obj_cactus.y - 2;

//APUNTAR AL PUNTERO DEL MOUSE


if (obj_cactus.controller == 0)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else
{
	var controllerh = gamepad_axis_value(0, gp_axisrh);
	var controllerv = gamepad_axis_value(0, gp_axisrv);
	if (abs(controllerh) > 0.2) or (abs(controllerv) > 0.2)
	{
		controllerangle = point_direction(0, 0, controllerh, controllerv)	
	}
	image_angle = controllerangle;
}






firingdelay = firingdelay - 1;



if ((gamepad_button_check(0, gp_shoulderr)) || (mouse_check_button(mb_left))) && (firingdelay < 0)


{
	firingdelay = 10;
	recoil = 4;
	screen_shake(2, 10)
	
	with (instance_create_layer(x, y, "balas", obj_bala))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
		
	}
}

recoil = max(0, recoil -1);

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;	
}