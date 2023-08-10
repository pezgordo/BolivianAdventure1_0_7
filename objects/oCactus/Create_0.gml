invencible = 0;

tele_inst = 0;

onboard = 0;

dead = 0;


statua_timer = true;



hp = 10;
hp_max = hp;

//VIDAS
//vidas = 3;

//MONEDAS
coins = 0;

//propiedades de la barra de salud en el GUI
healthbar_width = 200;
healthbar_height = 24;
healthbar_x = (900) - (healthbar_width);///128);
healthbar_y = ystart - 1260;
//


hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
canjump = 0;


flash = 0;


//Empieza en este estado
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();



//Valores para la chakana
cruz3_1 = 0;
cruz3_2 = 0;
cruz3_3 = 0;
cruz3_4 = 0;

cruz_andina = 0;

cruz_pausa = string("Aun no tienes ninguna pieza de la Cruz")

hascontrol = true;

enum PLAYERSTATE
{
	FREE,
	JUMP,
	ATTACK_SLASH,
	ATTACK_COMBO,
	ATTACK_KICK,
	HIT,
	THROW,
	FREEONPLATFORM
}



///alturadecactus
cactusH = 130;
//cactusH = 169;
//cactusH = sprite_get_height(spr_cactus_jump);
//



///
cruz_completa = 0;

///

cruz_complete_sound = 0;

///SHADER VARIABLES
bloomIntensity = shader_get_uniform(sh_glow, "intensity");
//bloomblurSize = shader_get_uniform(sh_glow, "blurSize");
suma = 0.0;
veloc = 0.05;



////STROBE TIMERS
on_time = 4;
off_time = 4;




