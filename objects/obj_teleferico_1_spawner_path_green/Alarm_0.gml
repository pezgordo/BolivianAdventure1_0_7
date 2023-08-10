/// CREATE TELEFERICO ON PATH 1
with(instance_create_layer(path_get_x(path_green, 0), path_get_y(path_green, 0), "teleferico_vuelta", obj_teleferico_green))
{
	tpath = 1;	
}



alarm[0] = room_speed * 8;

