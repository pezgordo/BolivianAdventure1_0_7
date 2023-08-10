/// CREATE TELEFERICO ON PATH 2
with(instance_create_layer(path_get_x(path_teleferico_2, 0), path_get_y(path_teleferico_2, 0), "teleferico_vuelta", obj_teleferico_1))
{
	tpath = 2;
}



alarm[0] = room_speed * 8;

