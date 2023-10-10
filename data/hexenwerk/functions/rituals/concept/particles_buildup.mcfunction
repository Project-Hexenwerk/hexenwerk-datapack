tp @s ~ ~ ~ ~5 ~

$execute positioned ^ ^ ^$(witch_particle_pos) run function hexenwerk:rituals/concept/buildup_particles/wings
$execute positioned ^ ^ ^-$(witch_particle_pos) run function hexenwerk:rituals/concept/buildup_particles/wings

scoreboard players remove @s hexenwerk.ritual_distance 1
execute if score @s hexenwerk.ritual_distance matches 0 run function hexenwerk:rituals/concept/particles
execute if score @s hexenwerk.ritual_distance matches 0 run scoreboard players set @s hexenwerk.ritual_flames_timer 40

