scoreboard players set temp hexenwerk.temp -1
scoreboard players operation temp hexenwerk.temp += @s hexenwerk.magical_crafting_slot6_count
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get temp hexenwerk.temp