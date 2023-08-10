hsp = 0;
vsp = 0;
grv = 0.3;
rotacion = 0;


throw_sounds = choose(snd_ekeko_throw_1, snd_ekeko_throw_2, snd_ekeko_throw_3);

audio_play_sound(throw_sounds, 8, 0);


objetos = choose(spr_hip_bote_totora, spr_hip_camion_1, spr_hip_camion_2, spr_hip_carretilla, spr_hip_casa_1, spr_hip_chanchito, spr_hip_charango, spr_hip_edificio, spr_hip_gallina, spr_hip_muneca, spr_hip_quena, spr_hip_sapo, spr_hip_trompo, spr_hip_zampona);

cara = choose(-1, 1)



objeto_select = cara;

/////


fade_time = 3;

fade_timer = fade_time;


///


timer = 1;

///


hitByAttack = ds_list_create();