


//if point_distance(x, y, oCactus.x, oCactus.y) < 250
var distance = distance_to_object(oCactus)

if (distance < 250)

{
		
		
		
		
		with(instance_create_layer(x, y + 34, "enemy", obj_paloma1_turd1))
		{
		
		vsp = 2;
		
		//direction = obj_hadduken.x;//.hitfrom;
		
		//direction = point_direction(oCactus.x, oCactus.y, self.x, self.y)
		
		//hsp = lengthdir_x(20, direction);
		
		//hsp = 20 * direction;
		
		//vsp = lengthdir_y(22, direction)-2;
		//vsp = -7;
		
		//if (sign(hsp) != 0) image_xscale = sign(hsp);
		
		//x = x + hsp;
		
		alarm[0] = (room_speed * 1) ;
		
		}
		
}

