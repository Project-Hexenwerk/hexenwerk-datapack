tag @s remove hexenwerk.init

data modify entity @s data.spell_data set from storage hexenwerk:temp wand_data.events
execute at @p[tag=hexenwerk.caster] rotated as @p[tag=hexenwerk.caster] run tp @s ~ ~1.5 ~ ~ ~
tp @s ^ ^ ^0.1
execute store result score @s hexenwerk.spell_speed run data get storage hexenwerk:temp wand_data.speed
scoreboard players operation @s hexenwerk.spell_range = #max_raycast_distance hexenwerk.config_only

function hexenwerk:wand/spells/generated/slowcast/tick