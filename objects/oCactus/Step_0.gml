key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("H"));
key_throw = keyboard_check_released(ord("J"));

vsp = vsp + grv;


if place_meeting(x, y + vsp, obj_pothole)
{
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	cactusH -= vsp
	image_alpha = 0;
}

//if (place_meeting(x, y , obj_pothole)) cactusH -= vsp



if (sprite_index == spr_cactus_run) && (image_index == 1) audio_play_sound(choose(snd_step1,snd_step2,snd_step3,snd_step4), 1, false);
if (sprite_index == spr_cactus_run) && (image_index == 3) audio_play_sound(choose(snd_step1,snd_step2,snd_step3,snd_step4), 1, false);

//if (sprite_index == spr_cactus_run) && (image_index >= 1) && (image_index <=2) audio_play_sound(choose(snd_step1,snd_step2,snd_step3,snd_step4), 1, false);
//if (sprite_index == spr_cactus_run) && (image_index >= 3) && (image_index <= 4) audio_play_sound(choose(snd_step1,snd_step2,snd_step3,snd_step4), 1, false);



////prueba de transparencia

//if instance_position(x, y, obj_pothole_mask)
//{

//gpu_set_blendmode_ext(bm_zero, bm_zero);

//gpu_set_blendmode(bm_subtract)

//draw_self()
	
//gpu_set_blendmode(bm_normal);

//image_alpha = 0;

//}
//// fin prueba de transparencia

///prueba borrar si esta mal
///if(playerRecoil!=-1){
   /// playerRecoil-=1;
   ///direction = image_angle-180; //opposite direction that the player is currently facing
   ///speed= recoilSpeed;
   ///playerStop=1;
///}

///if(playerRecoil=-1 && playerStop=1){
    ///speed=0;
    ///playerStop=-1;
    ///}
	
///fin prueba borrar 	

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
	case PLAYERSTATE.JUMP: PlayerState_Jump(); break;
	case PLAYERSTATE.ATTACK_KICK: PlayerState_Attack_Kick(); break;
	case PLAYERSTATE.HIT: PlayerState_Hit(); break;
	case PLAYERSTATE.THROW: PlayerState_Throw();break;
	case PLAYERSTATE.FREEONPLATFORM: PlayerState_Free_onPlatform();break;
	
}


if (state == 0) state_name = "FREE"
if (state == 1) state_name = "JUMP"
if (state == 2) state_name = "ATTACK_SLASH"
if (state == 3) state_name = "ATTACK_COMBO"
if (state == 4) state_name = "ATTACK_KICK"
if (state == 5) state_name = "HIT"
if (state == 6) state_name = "THROW"
if (state == 7) state_name = "FREEONPLATFORM"



///SHADER STEP SETTINGS
suma += veloc;

if (suma == 1) veloc =-veloc;

if (suma < 0) veloc = 0.05;



///COINS AND LIVES

if (coins = 10)
	{
		global.vidas += 1;
		audio_play_sound(snd_live_up, 10, 0);
		//life_up = 1;
		instance_create_layer(x + 50, y - 50, "music", obj_1up_64w)
		coins = 0;
	}
	
///



	
	
///STROBE EFFECT

/*
// Check if it's time to turn on the light
if (alarm[5] <= 0) {
    image_alpha = 1;
    alarm[5] = on_time;
}
// Check if it's time to turn off the light
else if (alarm[5] > 0 && alarm[6] <= 0) {
    image_alpha = 0;
    alarm[6] = off_time;
}
// Update the alarm counters
if (alarm[5] > 0) {
    alarm[5] -= 1;
}
if (alarm[6] > 0) {
    alarm[6] -= 1;
}

*/


//CRUZ ANDINA TO HOLD

/// 1
if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 0) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 0, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 1;
	instance_destroy(obj_cruz3_1);
}


//2
if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 0) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 1, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 2;
	instance_destroy(obj_cruz3_2);
}

//3
if ((cruz3_1 == 0) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 2, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 3;
	instance_destroy(obj_cruz3_3);
}

//4
if ((cruz3_1 == 0) && (cruz3_2 == 0) && (cruz3_3 == 0) && (cruz3_4 == 1))
{
	//draw_sprite_ext(spr_cruz3, 3, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 4;
	instance_destroy(obj_cruz3_4);
}

//5
if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 0) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 4, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 5;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_2);
}

//6
if ((cruz3_1 == 0) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 1))
{
	//draw_sprite_ext(spr_cruz3, 5, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 6;
	instance_destroy(obj_cruz3_3);
	instance_destroy(obj_cruz3_4);
}

//7
if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 6, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 7;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_3);
	
	
}

//8

if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 0 && (cruz3_4 == 1)))
{
	//draw_sprite_ext(spr_cruz3, 7, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 8;
	instance_destroy(obj_cruz3_2);
	instance_destroy(obj_cruz3_4);
}

//9
if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 0) && (cruz3_4 == 1))
{
	//draw_sprite_ext(spr_cruz3, 8, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 9;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_4);
}

//10
if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 9, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 10;
	instance_destroy(obj_cruz3_2);
	instance_destroy(obj_cruz3_3);
}

//11
if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 0))
{
	//draw_sprite_ext(spr_cruz3, 10, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 11;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_2);
	instance_destroy(obj_cruz3_3);
}

//12
if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 0) && (cruz3_4 == 1))
{
	//draw_sprite_ext(spr_cruz3, 11, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 12;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_2);
	instance_destroy(obj_cruz3_4);
}

//13
if ((cruz3_1 == 0) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 1))
{
	//draw_sprite_ext(spr_cruz3, 12, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 13;
	instance_destroy(obj_cruz3_2);
	instance_destroy(obj_cruz3_3);
	instance_destroy(obj_cruz3_4);
}

//14
if ((cruz3_1 == 1) && (cruz3_2 == 0) && (cruz3_3 == 1) && (cruz3_4 == 1))
{
	//draw_sprite_ext(spr_cruz3, 13, healthbar_x + 120, healthbar_y + 50, 0.5, 0.5, 0, 0, 1);
	cruz_andina = 14;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_3);
	instance_destroy(obj_cruz3_4);
}

//15
if ((cruz3_1 == 1) && (cruz3_2 == 1) && (cruz3_3 == 1) && (cruz3_4 == 1))
{
	cruz_andina = 15;	
	cruz_completa = 1;
	cruz_complete_sound = cruz_complete_sound + 1;
	instance_destroy(obj_cruz3_1);
	instance_destroy(obj_cruz3_2);
	instance_destroy(obj_cruz3_3);
	instance_destroy(obj_cruz3_4);
}

///

			
if (cruz_andina >= 1 && cruz_andina <= 4) cruz_pausa = string( "Aun te faltan 3 piezas para completar la Cruz Andina")
			/*
			
			if (instance_exists(oCactus))
			{
				if (oCactus.cruz_andina >= 1) && (oCactus.cruz_andina <= 4)
					{			
						draw_text(100, 200, "Aun te faltan 3 piezas para completar la Cruz Andina")
					}
					
				if (oCactus.cruz_andina >= 5) && (oCactus.cruz_andina <= 10)
					{			
						draw_text(100, 200, "Aun te faltan 2 piezas para completar la Cruz Andina")
					}
				if (oCactus.cruz_andina >= 11) && (oCactus.cruz_andina <= 14)
					{			
						draw_text(100, 200, "Solo te falta 1 pieza para completar la Cruz Andina")
					}
				if (oCactus.cruz_andina == 15)
					{			
						draw_text(100, 200, "Completaste la Cruz! Ve con el Monolito")
					}
				
			}
*/











///
if (cruz_complete_sound == 30) 
{
	if (!audio_is_playing(snd_cruz_completa))
	{
		audio_play_sound(snd_cruz_completa, 10, 0);
	}
	
	instance_create_layer(x, y, "cruz3", obj_cruz3_completa);
	
	cruz_complete_sound = 31;
}
