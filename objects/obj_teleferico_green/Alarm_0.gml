


if (tpath = 1)
{
	var closest_position = PathGetClosestPosition(path_green,self.x, self.y, 10);
	
	path_start(path_green, 2, path_action_stop, true);
	path_position = closest_position;
	depth = 2700;
}

if (tpath = 2)
{
	var closest_position = PathGetClosestPosition(path_green,self.x, self.y, 10);
	
	path_start(path_green, 2, path_action_stop, true);
	path_position = closest_position;
	depth = 2800;
}
