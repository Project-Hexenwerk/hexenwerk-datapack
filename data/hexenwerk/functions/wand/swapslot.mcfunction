tellraw @a[tag=hexenwerk.debug] ["",{"text":"\n[DEBUG] ","color":"dark_red"},{"selector":"@s ","color":"light_purple"},{"text":" -> swapping wand slot","color":"red"}]

execute store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> selected spell slot is ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.spell_slot"},"color":"gold"}]

execute if score @s hexenwerk.spell_slot matches 1 run function hexenwerk:wand/slot_2/swapto
execute if score @s hexenwerk.spell_slot matches 2 run function hexenwerk:wand/slot_3/swapto
execute if score @s hexenwerk.spell_slot matches 3 run function hexenwerk:wand/slot_1/swapto

