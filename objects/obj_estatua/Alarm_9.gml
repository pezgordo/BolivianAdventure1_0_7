with obj_music
	{
		instance_destroy()	
	}
				
audio_stop_all();

if(AdMob_Interstitial_IsLoaded())
			{
				AdMob_Interstitial_Show();	
			}
				
slide_transition(TRANS_MODE.NEXT);
					