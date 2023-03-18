 
execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-selected_wand_slot
title @s title ""
title @s times 0 2147483647 0
scoreboard players set @s hexenwerk.holding_wand_timer 1

