/// @description Insert description here
// You can write your code in this editor


key_attack = keyboard_check_pressed(ord("H"));

suma += veloc;

if (suma == 1) veloc =-veloc;

if (suma < 0) veloc = 0.05;

if (instance_exists(oCactus))  
{
	if (place_meeting(x, y, oCactus)) && (oCactus.cruz_completa == 1) && (key_attack)
	{	
		dibujar_circulo = true;
		timer_start = true;
		audio_play_sound(snd_level_win, 10, 0);
		
		
	}
	else dibujar_circulo = false;
}

if(timer_start = true) statua_timer --;
else statua_timer = room_speed * 2;


if(statua_timer < 1)
		{
			statua_timer = room_speed * 2;
			dibujar_circulo = true;
			
			alarm[9] = room_speed * 2;
		}



