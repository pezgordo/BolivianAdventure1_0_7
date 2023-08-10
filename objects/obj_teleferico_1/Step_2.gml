hsp = x - xprevious;
vsp = y - yprevious;


with oCactus
    {
		if (onboard == 1)
		{
		    if place_meeting(x,y+4,other)
			{
				onboard = 1
			// Move him with the lift
				vsp = 0;
		          //x+=other.x-other.xprevious;
		          //y+=other.y-other.yprevious;
				hsp = other.x - other.xprevious;
				
				
				///oCactus depth choose
				if(other.tpath == 1) depth = 1590;
				else if(other.tpath == 2) depth = 1890;
				
				
				// COLISION HORIZONTAL CON PARED MIENTRAS ESTAS ENCIMA DE TELEFERICO
				if (place_meeting(x + hsp, y, obj_pared)) 
				{
					while (!place_meeting(x + sign(hsp), y, obj_pared))
					{
						x = x + sign(hsp);
					}
				
					hsp= 0;
		
				}	
				
				y = y + vsp;
				x = x + hsp;	
				}
			/*
			else
			{
				//onboard = 0;
				depth = 300;
			}
			*/
		}

    }

