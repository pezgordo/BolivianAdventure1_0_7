key_music_next = keyboard_check_pressed(ord("P"));

if (key_music_next)
{	audio_stop_sound(obj_music.pista);
	audio_stop_sound(obj_music.tracklist[1]);
	audio_stop_sound(obj_music.tracklist[2]);
	audio_stop_sound(obj_music.tracklist[3]);
	//obj_music.pista = (obj_music.pista++);
	//obj_music.pista = (++obj_music.pista);
	
	
}

