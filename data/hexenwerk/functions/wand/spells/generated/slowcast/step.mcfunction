scoreboard players remove @s hexenwerk.spell_speed 1

scoreboard players operation entity_collision_distance hexenwerk.temp = #max_raycast_distance hexenwerk.config_only
scoreboard players operation entity_collision_distance hexenwerk.temp -= #1 hexenwerk.constant
scoreboard players add @s hexenwerk.spell_distance_traveled 1
scoreboard players add @s hexenwerk.spell_distance_traveled_unmodified 1

function hexenwerk:wand/spells/generated/events/raycast_travel with entity @s item.tag.spell_data

tp ~ ~ ~

# vvv SACRED LINE DON'T TOUCH vvv
execute unless data entity @s {item:{tag:{spell_data:{on_entity_collision:{as_target:""}}}}} if score @s hexenwerk.spell_distance_traveled_blocks > #1 hexenwerk.constant store result score hit hexenwerk.temp as @e[type=#hexenwerk:mob,dx=0] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] positioned ~.99 ~.99 ~.99 as @e[type=item_display,tag=hexenwerk.spell_ray_marker,sort=nearest,limit=1] run function hexenwerk:wand/spells/generated/events/collide_entity_entity with entity @s item.tag.spell_data.on_entity_collision
# ^^^ SACRED LINE DON'T TOUCH ^^^

execute unless data entity @s {item:{tag:{spell_data:{on_block_collision:""}}}} store result score hit hexenwerk.temp unless block ~ ~ ~ #hexenwerk:transparent run function hexenwerk:wand/spells/generated/events/collide_block with entity @s item.tag.spell_data
execute if score hit hexenwerk.temp matches 1 run kill


execute if score @s hexenwerk.spell_distance_traveled matches 10 run scoreboard players add @s hexenwerk.spell_distance_traveled_blocks 1
execute if score @s hexenwerk.spell_distance_traveled matches 10 run scoreboard players reset @s hexenwerk.spell_distance_traveled

execute if score @s hexenwerk.spell_distance_traveled_blocks >= @s hexenwerk.spell_range run kill

execute if score @s hexenwerk.spell_speed matches 1.. positioned ^ ^ ^.1 run function hexenwerk:wand/spells/generated/slowcast/step