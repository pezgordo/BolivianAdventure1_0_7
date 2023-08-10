
//@desc Move to next room





		
		
		
		//////
		/*
		if (oCactus.statua_timer = true)
			{
				oCactus.statua_timer = false;
				oCactus.alarm[9] = 60;
				alarm[9] = 60;
			}
		*/
		/////alrevez!!!
if (oCactus.cruz_completa == 1) && (key_attack)
{
		if(!instance_exists(obj_text))
			{
				
				with (instance_create_layer(obj_estatua.x + (137 / 2), obj_estatua.y - 20, "balas", obj_text))
					{
					text = obj_estatua.text;
					length = string_length(text);
					}
	
				with (obj_camara)
					{
					follow = other.id;	
					}
			}
}
		/////
		
		
		/*
		if(hascontrol)
			{
				hascontrol = false;
				//slide_transition(TRANS_MODE.GOTO,other.target);
				
				with obj_music
					{
						instance_destroy()	
					}
				
					audio_stop_all();
				
					slide_transition(TRANS_MODE.NEXT);
			}
			*/
	//}
	
if (!oCactus.cruz_completa = 1) && (key_attack)
	{
		if(!instance_exists(obj_text))
			{
				with (instance_create_layer(obj_estatua.x + (137 / 2), obj_estatua.y - 20, "balas", obj_text))
					{
					text = obj_estatua.text_2;
					length = string_length(text);
					}
	
					with (obj_camara)
					{
					follow = other.id;	
					}
			}
	
		}
		



/*


with (oCactus)
{
	if (oCactus.cruz_completa = 1) && (key_attack) && (oCactus.alarm[9] = -1)
	{
		/////
		if (oCactus.statua_timer = true)
		{
			oCactus.statua_timer = false;
			alarm[9] = 60;
		}
		
		if(!instance_exists(obj_text))
			{
				
				with (instance_create_layer(obj_estatua.x + (137 / 2), obj_estatua.y - 20, "balas", obj_text))
					{
					text = obj_estatua.text;
					length = string_length(text);
					}
	
				with (obj_camara)
					{
					follow = other.id;	
					}
					
				
			}
		
		/////
		
		
		/*
		if(hascontrol)
			{
				hascontrol = false;
				//slide_transition(TRANS_MODE.GOTO,other.target);
				
				with obj_music
					{
						instance_destroy()	
					}
				
					audio_stop_all();
				
					slide_transition(TRANS_MODE.NEXT);
			}
			*/
	//}
	/*
	if (!oCactus.cruz_completa = 1) && (key_attack)
		{
			if(!instance_exists(obj_text))
			{
				with (instance_create_layer(obj_estatua.x + (137 / 2), obj_estatua.y - 20, "balas", obj_text))
					{
					text = obj_estatua.text_2;
					length = string_length(text);
					}
	
					with (obj_camara)
					{
					follow = other.id;	
					}
			}
	
		}
		
//}