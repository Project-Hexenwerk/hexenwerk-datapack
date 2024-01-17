tag @s remove hexenwerk.modified_crafing_output
execute store result score @s hexenwerk.magical_crafting_slot0_count run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score @s hexenwerk.magical_crafting_slot1_count run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score @s hexenwerk.magical_crafting_slot2_count run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score @s hexenwerk.magical_crafting_slot3_count run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute store result score @s hexenwerk.magical_crafting_slot4_count run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result score @s hexenwerk.magical_crafting_slot5_count run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result score @s hexenwerk.magical_crafting_slot6_count run data get block ~ ~ ~ Items[{Slot:19b}].Count
execute store result score @s hexenwerk.magical_crafting_slot7_count run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result score @s hexenwerk.magical_crafting_slot8_count run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute if data block ~ ~ ~ Items[{Slot:1b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/0
execute if data block ~ ~ ~ Items[{Slot:2b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/1
execute if data block ~ ~ ~ Items[{Slot:3b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/2
execute if data block ~ ~ ~ Items[{Slot:10b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/3
execute if data block ~ ~ ~ Items[{Slot:11b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/4
execute if data block ~ ~ ~ Items[{Slot:12b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/5
execute if data block ~ ~ ~ Items[{Slot:19b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/6
execute if data block ~ ~ ~ Items[{Slot:20b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/7
execute if data block ~ ~ ~ Items[{Slot:21b}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/substract/8
scoreboard players set @s hexenwerk.crafting_result_time 0