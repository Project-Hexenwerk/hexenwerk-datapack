execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-selected_wand_slot
execute store result score @s hexenwerk.mana_regen run data get entity @s SelectedItem.tag.hexenwerk-attunements.mana_regen_modifier
execute unless score @s hexenwerk.mana_regen matches 0 run tag @s add hexenwerk-hexenwerk.attuned_mana_regen
function hexenwerk:update/wand/main
title @s title ""
title @s times 0 2147483647 0
scoreboard players set @s hexenwerk.holding_wand_timer 1

