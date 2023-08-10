particle_system = part_system_create();

particle_type_ghost_fade = part_type_create();

part_type_sprite(particle_type_ghost_fade, spr_fantasma, 0, 0, 1);
part_type_size(particle_type_ghost_fade, 1, 1, 0, 0);

part_type_life(particle_type_ghost_fade, 20, 20);

part_type_alpha3(particle_type_ghost_fade, 0.5, 0.3, 0.1);

part_type_color1(particle_type_ghost_fade, c_white);