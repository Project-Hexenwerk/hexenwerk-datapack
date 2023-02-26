scoreboard players set temp hexenwerk.temp -1
scoreboard players operation temp hexenwerk.temp += @s hexenwerk.magical_crafting_slot8_count
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get temp hexenwerk.temp