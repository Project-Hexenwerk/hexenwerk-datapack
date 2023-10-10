$execute positioned ~ ~14 ~2 run particle flame ~$(flame_particle_pos_x) ~-$(flame_particle_pos_y) ~$(flame_particle_pos_x)
$execute positioned ~-2 ~14 ~ run particle flame ~$(flame_particle_pos_x) ~-$(flame_particle_pos_y) ~$(flame_particle_pos_x)
$execute positioned ~2 ~14 ~ run particle flame ~$(flame_particle_pos_x) ~-$(flame_particle_pos_y) ~$(flame_particle_pos_x)
$execute positioned ~ ~14 ~-2 run particle flame ~$(flame_particle_pos_x) ~-$(flame_particle_pos_y) ~$(flame_particle_pos_x)

scoreboard players remove @s hexenwerk.ritual_flames_timer 1

execute if score @s hexenwerk.ritual_flames_timer matches 0 run particle minecraft:flame ~-2 ~14 ~ 0 0 0 0.2 100
execute if score @s hexenwerk.ritual_flames_timer matches 0 run particle minecraft:flame ~2 ~14 ~ 0 0 0 0.2 100
execute if score @s hexenwerk.ritual_flames_timer matches 0 run particle minecraft:flame ~ ~14 ~2 0 0 0 0.2 100
execute if score @s hexenwerk.ritual_flames_timer matches 0 run particle minecraft:flame ~ ~14 ~-2 0 0 0 0.2 100

