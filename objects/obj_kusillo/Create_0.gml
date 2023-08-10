 /// @description Insert description here
// You can write your code in this editor


vsp = 0;
grv = 0.3;
walksp = -4;

hsp = walksp;

hp = 2;
flash = 0;
hitfrom = 0;

hitByAttack = ds_list_create();

state = KUSISTATE.ROAM;

afraidofheights = true;
grounded = false;

spriteH = sprite_get_height(spr_kusillo_hit);


//enum ENEMYSTATE
enum KUSISTATE
{
	ROAM
	//HIT
}