

///DISTANCE
if instance_exists(oCactus)
{
	dist = 	point_distance(x, y, oCactus.x, oCactus.y);
}




//STATE MACHINE
switch (state)
{
	case EKEKOSTATE.WALK: EkekoState_Walk();break;
	case EKEKOSTATE.CHASE: EkekoState_Chase();break;
	case EKEKOSTATE.KICKATTACK: EkekoState_KickAttack();break;
	case EKEKOSTATE.JUMPATTACK: EkekoState_JumpAttack(); break;
	case EKEKOSTATE.HIPHOPATTACK: EkekoState_HipHopAttack();break;
	case EKEKOSTATE.AIRCHASE: EkekoState_Air_Chase();break;
	case EKEKOSTATE.HIT: EkekoState_Hit();break;
}


///STATE NAMES FOR DEBUG
if (state == 0) state_name = "WALK"
if (state == 1) state_name = "CHASE"
if (state == 2) state_name = "KICKATTACK"
if (state == 3) state_name = "JUMPATTACK"
if (state == 4) state_name = "HIPHOPATTACK"
if (state == 5) state_name = "AIRCHASE"


////