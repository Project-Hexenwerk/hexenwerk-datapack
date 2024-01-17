execute store result storage hexenwerk ritual_id int 1 run scoreboard players get @s hexenwerk.ritual_id
function hexenwerk:rituals/entity_cleanup with storage hexenwerk

execute positioned ~ ~ ~0.1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~ ~ ~-0.1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~0.1 ~ ~ facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~-0.1 ~ ~ facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~-0.1 ~ ~0.1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~-0.1 ~ ~-0.1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~0.1 ~ ~-0.1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~0.1 ~ ~0.1 facing entity @s feet run function hexenwerk:rituals/destruction_particles

execute positioned ~ ~0.5 ~1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~ ~0.5 ~-1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~1 ~0.5 ~ facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~-1 ~0.5 ~ facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~-1 ~0.5 ~1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~-1 ~0.5 ~-1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~1 ~0.5 ~-1 facing entity @s feet run function hexenwerk:rituals/destruction_particles
execute positioned ~1 ~0.5 ~1 facing entity @s feet run function hexenwerk:rituals/destruction_particles


particle explosion ~ ~0.5 ~ 0 0 0 1 4
particle flash ~ ~0.5 ~ 0 0 0 1 1

playsound block.amethyst_cluster.break block @a ~ ~ ~ 2 0.3
playsound block.beacon.deactivate block @a ~ ~ ~ 1 2

tag @s remove hexenwerk.ritual_base_block