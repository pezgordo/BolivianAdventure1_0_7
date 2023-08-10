/// CREATE TELEFERICO ON PATH 1
with(instance_create_layer(path_get_x(path_yellow, 0), path_get_y(path_yellow, 0), "teleferico_ida", obj_teleferico_yellow))
{
	tpath = 2;	
}



alarm[0] = room_speed * 8;

