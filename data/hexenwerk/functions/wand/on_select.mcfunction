tag @s remove hexenwerk.attuned_mana_regen
tag @s remove hexenwerk.attuned_maximum
tag @s add hexenwerk.holding_wand
execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-selected_wand_slot
execute store result score @s hexenwerk.mana_regen run data get entity @s SelectedItem.tag.hexenwerk-attunements.mana_regen_modifier
execute if predicate hexenwerk:holding/maximum_attuned_wand run function hexenwerk:mana_modifiers/weapon
execute unless score @s hexenwerk.mana_regen matches 0 run tag @s add hexenwerk.attuned_mana_regen
execute unless predicate hexenwerk:holding/wand_offhand run function hexenwerk:wand/update_spells/main_mainhand
function hexenwerk:update/wand/main
title @s times 0 2147483647 0
