//if (image_index == 1)

//if (sprite_index == spr_checkpoint_lit)
//{
//	exit;	
//}


if (sprite_index == spr_checkpoint_lit)
{
	exit;	
}


if (!audio_is_playing(snd_checkpoint))
	{
		audio_play_sound(snd_checkpoint, 10, 0);
	}
	


oCactus.hp = oCactus.hp + 4;
if (oCactus.hp > oCactus.hp_max)oCactus.hp = oCactus.hp_max


sprite_index = spr_checkpoint_lit;
image_speed = 1;

ini_open("checkpoint.ini");

ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);


//ini_write_real("pickups", "cruz_andina", cruz_andina);

//ini_write_real("health", "vidas", other.vidas);
/*
ini_write_real("pickups", "cruz_andina_1", other.cruz3_1);
ini_write_real("pickups", "cruz_andina_2", other.cruz3_2);
ini_write_real("pickups", "cruz_andina_3", other.cruz3_3);
ini_write_real("pickups", "cruz_andina_4", other.cruz3_4);
*/

//ini_write_real("player", "hp", other.hp);
//ini_write_real("throwable", "stock", obj_throwable.stock);

//SAVE LIST IDS TO DESTROY

list_size = ds_list_size(global.lista_checkpoint);


for (var i = 0; i < list_size; i++) 
	{
		ini_write_real("idstodestroy", "ids_" + string(i), real(ds_list_find_value(global.lista_checkpoint, i)));
	}

/*
for (var i = 0; i < ds_list_size(global.lista_checkpoint); i++) 
	{
		var value = ds_list_find_value(global.lista_checkpoint, i);
		
		ini_write_real("idstodestroy", "ids_" + string(i), value);
	}

*/

ini_close();