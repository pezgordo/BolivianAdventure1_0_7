particle_system = part_system_create();

particle_type_ghost_fade = part_type_create();

part_system_depth(particle_system, 900 );
/* INTENTE HACER SPRITE VARIABLE
if (instance_exists(obj_ekeko_throw))
{
	sprite = obj_ekeko_throw.objeto_select;
	part_type_sprite(particle_type_ghost_fade, sprite, 0, 0, 1);
}
*/


//part_type_sprite(particle_type_ghost_fade, spr_fx_turd_circle_4, 0, 0, 1);



part_type_shape(particle_type_ghost_fade, pt_shape_explosion);

part_type_size(particle_type_ghost_fade, 0.5, 0.5, -0.02, 0);

part_type_life(particle_type_ghost_fade, 20, 20);

//part_type_alpha3(particle_type_ghost_fade, 0.5, 0.3, 0.1);
part_type_alpha3(particle_type_ghost_fade, 1, 1, 0.1);

//part_type_color1(particle_type_ghost_fade, c_red);
part_type_colour2( particle_type_ghost_fade, c_black, c_white);
//part_type_colour3( particle_type_ghost_fade, c_black, c_red, c_white);

