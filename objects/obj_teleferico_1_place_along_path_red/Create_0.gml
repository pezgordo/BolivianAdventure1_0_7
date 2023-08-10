//alarm[0] = 210
//instance_create_layer(x, y, layer, obj_teleferico_1)

//alarm[0] = room_speed;

var p = 0;
var n = 10; // change to match how many trees to place evenly along the path
repeat n {
    var xx = path_get_x(path_red, p);
    var yy = path_get_y(path_red, p);
    with(instance_create_layer(xx, yy, "teleferico_ida", obj_teleferico_red))
	{
		tpath = 1;
	};
    p += 1/n;
}

/*

////CODE VARIATION RANDOM

var n = 30;
var p = 0;
var nudge_range = 0.3 * (1/n); // change 0.3 to affect how much to nudge an instance.
repeat n {
    var nudge = random_range(-nudge_range, nudge_range);
    var xx = path_get_x(Path1, p + nudge);
    var yy = path_get_y(Path1, p + nudge);
    instance_create_layer(xx, yy, "Instances", obj_tree);
    p += 1/n;
}


///SOLUTION BY FORUM USER
var p = 0;
var n = 500; // change to match how many trees to place evenly along the path
repeat n {
    var xx = path_get_x(level2_A, p);
    var yy = path_get_y(level2_A, p);
    xx=xx+irandom_range(-128,128);
    yy=yy+irandom_range(-96,96);
    instance_create_layer(xx, yy, "Instances", obj_tree);
    repeat(6)
    {
        xxx=xx-(8*irandom(192));
        yyy=yy+irandom_range(-128,128);
        instance_create_layer(xxx,yyy,"Instances",obj_tree);
    }
    p += 1/n;
}

*/