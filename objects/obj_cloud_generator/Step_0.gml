while (instance_number(obj_cloud_1) < 80) {
    with (instance_create_layer(random(room_width), random(room_height),"enemy_onroad",  obj_cloud_1)) {
        while (!place_empty(x, y)) {
			
			
			tamano = random_range(0.4, 0.6);
			depth = 0;
			
			image_xscale = tamano;
			image_yscale = tamano;
			
            x = random(room_width);
            y = random(room_height) - 900;// - 600);
        }
   }
}

