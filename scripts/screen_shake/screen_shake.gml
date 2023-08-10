/// @desc screen_shake(magnitud,frames)
/// @arg magnitude sets the strenth of the shake(radius in pixels)
/// @arg Frames sets the length of the shake in frames (60 = 1 second at 60fps)


with(obj_camara)
{
	if (argument0 > shake_remain)
	{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_length = argument1;
		
	}
}