//// gravedad
vsp = vsp + grv;
////

///
if place_meeting(x, y + vsp, obj_pothole)
{
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	spriteH -= vsp
}

///



switch (state)
{
	case ZEBRASTATE.ROAM: ZebraState_Roam();break;
	case ZEBRASTATE.CHASE: ZebraState_Chase();break;
	case ZEBRASTATE.ATTACK: ZebraState_Attack();break;
	case ZEBRASTATE.HIT: ZebraState_Hit(); break;
	case ZEBRASTATE.DEAD: ZebraState_Dead();break;
	
}


////
if !instance_exists(oCactus)
{
	
    state = ZEBRASTATE.ROAM;
}

/*
//////
if point_distance(x, y, oCactus.x, oCactus.y) > 300 
{
	
	state = ZEBRASTATE.ROAM;	
}

//////
/*
if point_distance(x, y, oCactus.x, oCactus.y) < 300 && point_distance(x, y, oCactus.x, oCactus.y) >200
	{
		
		state = ZEBRASTATE.CHASE;
		
	
	}


////



if point_distance(x, y, oCactus.x, oCactus.y) < 150
{
	state = ZEBRASTATE.ATTACK;	
}

}
*/
//METER EL SPRITE INDEX DE HIT






//if point_distance(x, y, oCactus.x, oCactus.y) < 70
//{
//	state = ZEBRASTATE.ATTACK;

//}

////











/////







