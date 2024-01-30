tag @s remove hexenwerk.init

execute if data storage hexenwerk:temp wand_data{show_orb:1b} run function hexenwerk:wand/spells/generated/slowcast/apply_model_orb

data modify entity @s item.tag.spell_data set from storage hexenwerk:temp wand_data.events
data modify entity @s item.tag.spell_data.id set from storage hexenwerk:temp wand_data.id
scoreboard players set @s hexenwerk.ray_lenght 2
execute at @p[tag=hexenwerk.caster] rotated as @p[tag=hexenwerk.caster] run tp @s ~ ~1.5 ~ ~ ~
tp @s ^ ^ ^0.1
execute store result score @s hexenwerk.spell_speed run data get storage hexenwerk:temp wand_data.speed
scoreboard players operation @s hexenwerk.spell_range = #max_raycast_distance hexenwerk.config_only

schedule function hexenwerk:wand/spells/generated/slowcast/tick 1t