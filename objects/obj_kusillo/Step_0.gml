//state = KUSISTATE.ROAM;


// VELOCIDAD VERTICAL + GRAVEDAD
vsp = vsp + grv;

/// SI  SE ENTRA AL HUECO 
if place_meeting(x, y + vsp, obj_pothole)
{
	while (!place_meeting(x, y+sign(vsp), obj_pothole))
	{
		y = y + sign(vsp);
	}
	spriteH -= vsp
}

///


//Dont walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+sprite_width / 2,y+1,obj_pared))
{

hsp = -hsp;
	
}

switch (state)
{
	case KUSISTATE.ROAM: KusiState_Roam();break;
	//case KUSISTATE.HIT: KusiState_Hit();break;
}

