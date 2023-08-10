//@desc Move to next room
with (oCactus)
{
	if(hascontrol)
	{
		hascontrol = false;
		slide_transition(TRANS_MODE.GOTO,other.target);
	}
}
