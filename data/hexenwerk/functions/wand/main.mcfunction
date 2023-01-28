execute unless predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand if score @s hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/use
execute unless predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if score @s[tag=!hexenwerk.dev] hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/use

execute if predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if score @s[tag=!hexenwerk.dev] hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/swapslot_offhand
execute if predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand if score @s hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/swapslot

execute unless predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if entity @s[tag=hexenwerk.dev] run function hexenwerk:dev/dev_stone/swap_spell/up
execute if predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if entity @s[tag=hexenwerk.dev] run function hexenwerk:dev/dev_stone/swap_spell/down