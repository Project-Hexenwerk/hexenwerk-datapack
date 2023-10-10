execute store result storage hexenwerk:concepts witch_particle_pos float 0.1 run scoreboard players get @s hexenwerk.ritual_distance
execute store result storage hexenwerk:concepts flame_particle_pos_x float 0.1 run random value -5..5
execute store result storage hexenwerk:concepts flame_particle_pos_y float 0.5 run scoreboard players get @s hexenwerk.ritual_flames_timer

execute if score @s hexenwerk.ritual_distance matches 1.. run function hexenwerk:rituals/concept/particles_buildup with storage hexenwerk:concepts
execute if score @s hexenwerk.ritual_flames_timer matches 1.. run function hexenwerk:rituals/concept/flame_particles with storage hexenwerk:concepts

