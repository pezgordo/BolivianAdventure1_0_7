hsp = x - xprevious;
vsp = y - yprevious;



if (self.montable = 1)
{
with oCactus
    {
		if (onboard = 1)
			{
		    //if place_meeting(x,y , other)
			if instance_place(x, y + 2, other)
				{
		         // Move him with the lift
				  //vsp = 0;
				 
		          //x+=other.x-other.xprevious;
		          //y+=other.y-other.yprevious;
				  ///////
				  
				//vsp = other.vsp;
				//hsp = other.hsp;
				
				vsp = other.y - other.yprevious;
				hsp = other.x - other.xprevious;
				
				
				depth = 1890;
			
				
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
				
					
				
			}
			
		
    }
}




/*
with oCactus
    {
		if (onboard = 1)
			{
		    if place_meeting(x,y+4,other)
				{
		         // Move him with the lift
				  vsp = 0;
		          x+=other.x-other.xprevious;
		          y+=other.y-other.yprevious;
		  
		        }
			}
			else
			{
				onboard = 0;
			}
    }

*/