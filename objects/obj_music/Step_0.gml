key_music_on_off = keyboard_check_pressed(ord("O"));


//if (key_music_on_off && music_on) music_on = false;

if (key_music_on_off) 
{
		if(!music_on) music_on = true;
		else music_on = false;
	//if (key_music_on_off) music_on = true;
	++contador
}
		
		
//if( !audio_is_playing(tracklist[0]))
//{
//	audio_play_sound(tracklist[1], 100, false);
	
	//audio_stop_sound(tracklist[0]);
//	audio_stop_sound(tracklist[2]);
//	audio_stop_sound(tracklist[3]);
//}		

//SI DEJA DE SONAR, SUENA LA SIGUIENTE CANCION
if (pista == 4) pista = 0;
		
if( !audio_is_playing( tracklist[pista % nbTracks]))
{
	 audio_play_sound( tracklist[++pista % nbTracks], 100, false);
 
}		
		

		
if (music_on = false) audio_pause_sound(tracklist[pista % nbTracks]);
else audio_resume_sound(tracklist[pista % nbTracks]);
//if (music_on = false && key_music_on_off) music_on = true;
//if (key_music_on_off && music_on = false) music_on = true;

