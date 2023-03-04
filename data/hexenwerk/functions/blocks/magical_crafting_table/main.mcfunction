execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ hopper[enabled=false]

execute if entity @s[tag=hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/wand/main
execute unless entity @s[tag=hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/magical/main

execute unless data block ~ ~ ~ Items[{Slot: 26b, id: "minecraft:barrier"}] if entity @s[tag=hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/switch_mode/crafting
execute unless data block ~ ~ ~ Items[{Slot: 26b, id: "minecraft:barrier"}] if entity @s[tag=!hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/switch_mode/wand

