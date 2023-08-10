// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Combo(){

/*
var inst = instance_place(x, y + 1, obj_teleferico_1);


if (inst != noone)
{
	if (place_meeting(x, y, inst)) 
	{
		hsp = inst.hsp;
		vsp = inst.vsp;
	}
}

else 
{
	hsp = 0;
	vsp = 0;
}


y = y + vsp;
*/


ProcessAttack(spr_cactus_punch_combo, spr_hadduken);

//Trigger Combo Chain
//if (key_attack) && (image_index > 1)
//{
	
//	state = PLAYERSTATE.ATTACK_SLASH;


//}


if (animation_end())
	{
		sprite_index = spr_cactus_still;
		state = PLAYERSTATE.FREE;
	}
	
	

}