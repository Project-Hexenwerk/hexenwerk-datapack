execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.temp run data get entity @s SelectedItem.tag.hexenwerk-attunements.mana_cost_modifier
execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.temp run data get entity @s SelectedItem.tag.hexenwerk-attunements.mana_cost_modifier

scoreboard players operation @s hexenwerk.mana_cost -= @s hexenwerk.temp
execute unless entity @s[gamemode=creative] unless entity @s[tag=hexenwerk.ignore_mana_cost] run scoreboard players operation @s hexenwerk.mana_current -= @s hexenwerk.mana_cost

 
execute if score @s hexenwerk.spell_id matches 1..999 run function hexenwerk:wand/spells/no_raycast/main
execute if score @s hexenwerk.spell_id matches 1010 run function hexenwerk:wand/spells/no_raycast/main
execute if score @s hexenwerk.spell_id matches 1000.. anchored eyes positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/main

execute unless score @s hexenwerk.spell_id matches 0 run advancement grant @s only hexenwerk:spell