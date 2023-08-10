/// CREATE TELEFERICO ON PATH 1
with(instance_create_layer(path_get_x(path_red, 0), path_get_y(path_red, 0), "teleferico_ida", obj_teleferico_red))
{
	tpath = 1;	
}



alarm[0] = room_speed * 6;

