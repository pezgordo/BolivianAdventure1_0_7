ekeko_invencible = 0;


vsp = 0;
grv = 0.3;

hp = 60;

hp_max = 60;


flash = 0;

walksp = 1;

hsp = 0;
vsp = 0;

state = EKEKOSTATE.WALK;

hitByAttack = ds_list_create();

timer = 0;



enum EKEKOSTATE
{
	WALK,
	CHASE,
	KICKATTACK,
	JUMPATTACK,
	HIPHOPATTACK,
	AIRCHASE,
	HIT
}


////VARIABLES AI

spd = 3;
jumpSpd = grv *44;

jump = 0;
left = 0;
right = 0;

xMove = 1;





bottom_y = 0;
cactus_bottom_y = 0;

////PROPIEDADES DE BARRA DE SALUD DE EKEKO BOSS	
healthbar_width = 600;
healthbar_height = 24;
healthbar_x = (800) - (healthbar_width);///128);
healthbar_y = ystart - 1150;
//


ekeko_flash = 0;