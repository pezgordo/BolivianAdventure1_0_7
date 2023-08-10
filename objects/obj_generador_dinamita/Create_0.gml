
inst2 = instance_create_layer(x, y, "pickups", obj_ring_wpn_dinamite1);
with (inst2)
{
    x = other.x;
	y = other.y;
}


//timer_generador_coca = room_speed * 10;

collected = 0
t2 = 0;
t1 = room_speed * 30;

inst_actual = inst2;