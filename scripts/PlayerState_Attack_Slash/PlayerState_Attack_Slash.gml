// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash(){


ProcessAttack(spr_cactus_punch_onehit, spr_hadduken);

// Trigger Combo Chain
if (key_attack) && (image_index > 1)
{
	
	state = PLAYERSTATE.ATTACK_COMBO;


}


if (animation_end())
{
	sprite_index = spr_cactus_still;
	state = PLAYERSTATE.FREE;
}
	
	

}