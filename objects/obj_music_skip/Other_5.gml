var _player_defeated = instance_exists(obj_cactus_dead);

if (!_player_defeated)
{
	if (file_exists("checkpoint.ini"))
	{
		file_delete("checkpoint.ini");	
	}
}