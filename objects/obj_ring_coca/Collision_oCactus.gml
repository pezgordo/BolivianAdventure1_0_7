oCactus.hp = oCactus.hp + 4;
if (oCactus.hp > oCactus.hp_max)oCactus.hp = oCactus.hp_max

//PLAY SOUND
audio_play_sound(snd_coca_pickup, 6, 0)



////
ds_list_add(global.lista_checkpoint, id);
	////


instance_destroy()