//instance_create_layer(x, y, "pickups", obj_ring_coca);



var inst = instance_create_layer(x, y, "pickups", obj_ring_wpn_dinamite1);
with (inst)
{
    x = other.x;
	y = other.y;
}

inst_actual = instance_exists(inst);

