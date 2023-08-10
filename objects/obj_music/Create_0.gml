music_on = true;

tracklist = [m_bolivia, m_2ndsong, m_3rdsong, m_4thsong]

//pista = 0;

nbTracks=array_length(tracklist);

contador = 0;







if (room == 2) pista = 0;
if (room == 3) pista = 1;
if (room == 4) pista = 2;
if (room == 5) pista = 3;


if (!audio_is_playing(tracklist[pista])) || (!audio_is_playing(tracklist[1])) || (!audio_is_playing(tracklist[2])) || (!audio_is_playing(tracklist[3]))
{
audio_play_sound(tracklist[pista], 100, false);
}



