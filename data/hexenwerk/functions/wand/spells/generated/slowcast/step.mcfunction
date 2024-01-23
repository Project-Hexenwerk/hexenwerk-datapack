scoreboard players remove @s hexenwerk.spell_speed 1

scoreboard players operation entity_collision_distance hexenwerk.temp = #max_raycast_distance hexenwerk.config_only
scoreboard players operation entity_collision_distance hexenwerk.temp -= #1 hexenwerk.constant
scoreboard players add @s hexenwerk.spell_distance_traveled 1

function hexenwerk:wand/spells/generated/events/raycast_travel with entity @s data.spell_data

tp ~ ~ ~

#execute store result score hit hexenwerk.temp if entity @e[distance=..0.25] unless data entity @s {data:{spell_data:{on_entity_collision:{as_target:""}}}} run function hexenwerk:wand/spells/generated/events/collide_entity_entity with entity @s data.spell_data
#execute  run say yo

execute unless data entity @s {data:{spell_data:{on_entity_collision:{as_target:""}}}} if score @s hexenwerk.spell_distance_traveled_blocks > #1 hexenwerk.constant store result score hit hexenwerk.temp if entity @e[type=#hexenwerk:mob,dx=0,gamemode=!creative] run function hexenwerk:wand/spells/generated/events/collide_entity_entity with entity @s data.spell_data.on_entity_collision
execute unless data entity @s {data:{spell_data:{on_block_collision:""}}} store result score hit hexenwerk.temp unless block ~ ~ ~ #hexenwerk:air run function hexenwerk:wand/spells/generated/events/collide_block with entity @s data.spell_data
execute if score hit hexenwerk.temp matches 1 run kill


execute if score @s hexenwerk.spell_distance_traveled matches 10 run scoreboard players add @s hexenwerk.spell_distance_traveled_blocks 1
execute if score @s hexenwerk.spell_distance_traveled matches 10 run scoreboard players reset @s hexenwerk.spell_distance_traveled

execute if score @s hexenwerk.spell_distance_traveled_blocks >= @s hexenwerk.spell_range run kill

execute if score @s hexenwerk.spell_speed matches 1.. positioned ^ ^ ^.1 run function hexenwerk:wand/spells/generated/slowcast/step