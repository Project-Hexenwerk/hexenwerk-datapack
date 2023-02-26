execute store result score @s hexenwerk.magical_crafting_slot0_count run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score @s hexenwerk.magical_crafting_slot1_count run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score @s hexenwerk.magical_crafting_slot2_count run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result score @s hexenwerk.magical_crafting_slot3_count run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute store result score @s hexenwerk.magical_crafting_slot4_count run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result score @s hexenwerk.magical_crafting_slot5_count run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result score @s hexenwerk.magical_crafting_slot6_count run data get block ~ ~ ~ Items[{Slot:19b}].Count
execute store result score @s hexenwerk.magical_crafting_slot7_count run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result score @s hexenwerk.magical_crafting_slot8_count run data get block ~ ~ ~ Items[{Slot:21b}].Count

execute if score @s hexenwerk.magical_crafting_slot4_count matches 1.. run function hexenwerk:blocks/magical_crafting_table/magical/check_recipes
