 

execute store result score @s hexenwerk.spell_slot run data get entity @s SelectedItem.tag.hexenwerk-selected_wand_slot
 

execute if score @s[tag=!hexenwerk.wand.just_switched] hexenwerk.spell_slot matches 1 run function hexenwerk:wand/slot_2/swapto
execute if score @s[tag=!hexenwerk.wand.just_switched] hexenwerk.spell_slot matches 2 run function hexenwerk:wand/slot_3/swapto
execute if score @s[tag=!hexenwerk.wand.just_switched] hexenwerk.spell_slot matches 3 run function hexenwerk:wand/slot_1/swapto

tag @s remove hexenwerk.wand.just_switched