if (global.vidas == 0)
{
	
	//game_over_text = true;
	slide_transition(TRANS_MODE.RESTART);
	if(AdMob_Interstitial_IsLoaded())
			{
				AdMob_Interstitial_Show();
				//slide_transition(TRANS_MODE.RESTART);
			}
			
	
	
	//global.vidas = -2;

}
if (global.vidas > 0)
//else
{
	game_set_speed(60, gamespeed_fps);
	slide_transition(TRANS_MODE.ROOMRESTART);//,room);	
}



//room_restart()
