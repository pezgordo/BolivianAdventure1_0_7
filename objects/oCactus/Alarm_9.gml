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