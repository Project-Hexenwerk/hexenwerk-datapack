tag @s add hexenwerk.spell.caster
scoreboard players set #raycast.traveled hexenwerk.temp 0

execute if score @s hexenwerk.spell_slot matches 1 run function hexenwerk:wand/spells/generated/get_spell_data/1
execute if score @s hexenwerk.spell_slot matches 2 run function hexenwerk:wand/spells/generated/get_spell_data/2
execute if score @s hexenwerk.spell_slot matches 3 run function hexenwerk:wand/spells/generated/get_spell_data/3
execute if score @s hexenwerk.spell_slot matches 4 run function hexenwerk:wand/spells/generated/get_spell_data/4
execute if score @s hexenwerk.spell_slot matches 5 run function hexenwerk:wand/spells/generated/get_spell_data/5

execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.temp run data get entity @s SelectedItem.tag.hexenwerk-attunements.range_modifier
execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.temp run data get entity @s SelectedItem.tag.hexenwerk-attunements.range_modifier
scoreboard players operation @s hexenwerk.temp += #max_raycast_distance hexenwerk.config_only
scoreboard players set #max_raycast_travel hexenwerk.temp 10
scoreboard players operation @s hexenwerk.temp *= #max_raycast_travel hexenwerk.temp

function hexenwerk:wand/spells/generated/start with storage hexenwerk:temp wand_data.events
execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run execute anchored eyes positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/generated/raycast with storage hexenwerk:temp wand_data.events

tag @s remove hexenwerk.spell.caster
