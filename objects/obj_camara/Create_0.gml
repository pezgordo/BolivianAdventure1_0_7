///SETUP CAMERA

cam = view_camera[0];
follow = oCactus;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 0;

//alarm[0] = 1;



////MOVE MOUNTAIN LAYER X POSITION
/*
backgroundLayerId = layer_get_id("Muntains"); 

backgroundSpeed = 1; 

layer_hspeed(backgorundLayerId, bakcgroundSpeed);
*/
/*
if (layer_exists("Mountains"))
{
	layer_x("Mountains", -500);
	
}

