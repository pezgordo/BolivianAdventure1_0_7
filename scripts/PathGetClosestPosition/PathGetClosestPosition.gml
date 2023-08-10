// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PathGetClosestPosition(){

///PathGetClosestPosition(path_index, x, y, precision);

var p_path, px, py, i, xx, yy, xy, solution;

p_path = argument0;
px = argument1;
py = argument2;
prec = argument3; //from 1 til path length. Smaller numbers are more precise but more CPU instensive

pri = ds_priority_create();

for(i=0; i<=1; i+=prec/path_get_length(p_path))
{
  xx = path_get_x(p_path, i);
  yy = path_get_y(p_path, i);
  ds_priority_add(pri, i, point_distance(xx, yy, px, py));
}

solution = ds_priority_find_min(pri);
ds_priority_destroy(pri);
return solution;

}