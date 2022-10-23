execute unless predicate hexenwerk:is_sneaking if predicate hexenwerk:is_holding_wand if score @s hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/use
execute unless predicate hexenwerk:is_sneaking if predicate hexenwerk:is_holding_wand_offhand if score @s[tag=!hexenwerk.dev] hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/use

execute if predicate hexenwerk:is_sneaking if predicate hexenwerk:is_holding_wand_offhand if score @s[tag=!hexenwerk.dev] hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/swapslot_offhand
execute if predicate hexenwerk:is_sneaking if predicate hexenwerk:is_holding_wand if score @s hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/swapslot

execute unless predicate hexenwerk:is_sneaking if predicate hexenwerk:is_holding_wand_offhand if entity @s[tag=hexenwerk.dev] run function hexenwerk:dev/dev_stone/swap_spell/up
execute if predicate hexenwerk:is_sneaking if predicate hexenwerk:is_holding_wand_offhand if entity @s[tag=hexenwerk.dev] run function hexenwerk:dev/dev_stone/swap_spell/down