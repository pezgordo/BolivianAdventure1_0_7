/// @description Insert description here
// You can write your code in this editor


vsp = 0;
grv = 0.3;


hp = 3;
flash = 0;
hitfrom = 0;

walksp = 1;
hsp = random_range(-4, 4);


afraidofheights = true;
grounded = false;

//hsp = walksp;


state=ZEBRASTATE.ROAM;

hitByAttack = ds_list_create();



spriteH = sprite_get_height(spr_zbr_jump);


can_attack = true;

enum ZEBRASTATE
{
	ROAM,
	CHASE,
	ATTACK,
	HIT,
	DEAD
}