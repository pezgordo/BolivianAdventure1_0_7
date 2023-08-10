 /// @description Insert description here
// You can write your code in this editor


vsp = 0;
grv = 0.3;
walksp = choose(-2, 2);


hsp = walksp;

hp = 4;
flash = 0;
hitfrom = 0;

hitByAttack = ds_list_create();


afraidofheights = true;
grounded = false;

spriteH = sprite_get_height(spr_cactus_jump);


enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
	
}