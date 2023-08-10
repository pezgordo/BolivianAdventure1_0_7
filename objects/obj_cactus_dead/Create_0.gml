//hsp = 0;
//vsp = -4;
hsp = 0;
vsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;
//screen_shake(6, 60);
//audio_play_sound(snd_pepino_death, 10, false);
game_set_speed(30, gamespeed_fps);
with (obj_camara) follow = other.id;
//alarm[0] = 60;

game_over_text = false;