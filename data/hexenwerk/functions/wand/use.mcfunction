execute if entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] run tellraw @s {"text":"You can't cast spells in protected areas!","color": "red"}

execute if predicate hexenwerk:holding/wand unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
execute if predicate hexenwerk:holding/wand_offhand unless predicate hexenwerk:holding/wand store result score @s hexenwerk.spell_slot run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-selected_wand_slot

execute unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] if score @s hexenwerk.spell_slot matches 1 run function hexenwerk:wand/slot_1/main
execute unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] if score @s hexenwerk.spell_slot matches 2 run function hexenwerk:wand/slot_2/main
execute unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] if score @s hexenwerk.spell_slot matches 3 run function hexenwerk:wand/slot_3/main
execute unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] if score @s hexenwerk.spell_slot matches 4 run function hexenwerk:wand/slot_4/main
execute unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] if score @s hexenwerk.spell_slot matches 5 run function hexenwerk:wand/slot_5/main

scoreboard players set @s hexenwerk.used_wfoas 0