tellraw @a[tag=hexenwerk.debug] ["",{"text":"\n[DEBUG] ","color":"dark_red"},{"selector":"@s ","color":"light_purple"},{"text":" -> used wand","color":"red"}]

execute if predicate hexenwerk:is_holding_wand store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
execute if predicate hexenwerk:is_holding_wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-selected_wand_slot

execute if score @s hexenwerk.spell_slot matches 1 run function hexenwerk:wand/slot_1/main
execute if score @s hexenwerk.spell_slot matches 2 run function hexenwerk:wand/slot_2/main
execute if score @s hexenwerk.spell_slot matches 3 run function hexenwerk:wand/slot_3/main

scoreboard players set @s hexenwerk.used_wfoas 0