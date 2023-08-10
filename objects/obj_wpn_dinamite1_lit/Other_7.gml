with(instance_create_layer(x, y, "balas", obj_fx_explosion1))
{
	
}
screen_shake(20, 15);

audio_play_sound(snd_tnt_explode,8,0);

instance_destroy();