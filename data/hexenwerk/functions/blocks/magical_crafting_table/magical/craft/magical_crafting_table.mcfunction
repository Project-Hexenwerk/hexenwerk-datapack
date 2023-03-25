
scoreboard players add @s[scores={hexenwerk.crafting_result_time=..1}] hexenwerk.crafting_result_time 1
execute if score @s hexenwerk.crafting_result_time matches 1 run loot replace block ~ ~ ~ container.15 loot hexenwerk:blocks/magical_crafting_table
data modify block ~ ~ ~ Items[{Slot:15b}].tag.hexenwerk-crafting_result set value 1b
execute unless entity @s[tag=hexenwerk.refreshing_crafting_result_item] if score @s hexenwerk.crafting_result_time matches 2 unless data block ~ ~ ~ Items[{Slot:15b,tag:{hexenwerk-magical_crafting_table:1b}}] run function hexenwerk:blocks/magical_crafting_table/magical/craft/remove_output/main