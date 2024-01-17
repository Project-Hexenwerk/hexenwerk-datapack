tag @s add hexenwerk.ritual_base_block
scoreboard players add %max hexenwerk.ritual_id 1
scoreboard players operation @s hexenwerk.ritual_id = %max hexenwerk.ritual_id

execute positioned ~ ~ ~4 facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~ ~ ~-4 facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~4 ~ ~ facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~-4 ~ ~ facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~-4 ~ ~4 facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~-4 ~ ~-4 facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~4 ~ ~-4 facing entity @s feet run function hexenwerk:rituals/construction_particles
execute positioned ~4 ~ ~4 facing entity @s feet run function hexenwerk:rituals/construction_particles

playsound block.beacon.activate master @a ~ ~ ~ 3 1.2
playsound block.beacon.deactivate block @a ~ ~ ~ 0.4 2
playsound block.amethyst_block.place master @a ~ ~ ~ 2 1

particle flash ~ ~0.5 ~ 0 0 0 1 1

function hexenwerk:rituals/summon_entities/summon