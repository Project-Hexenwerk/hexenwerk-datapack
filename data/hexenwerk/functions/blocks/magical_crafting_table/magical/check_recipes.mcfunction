scoreboard players set @s hexenwerk.crafting_recipe 0


# Ardo
execute if data block ~ ~ ~ Items[4] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:blaze_powder"}] run scoreboard players set @s hexenwerk.crafting_recipe 1

execute if score @s hexenwerk.crafting_recipe matches 0 run item replace block ~ ~ ~ container.15 with air
execute if score @s hexenwerk.crafting_recipe matches 0 run scoreboard players set @s hexenwerk.crafting_result_time 0

execute if score @s hexenwerk.crafting_recipe matches 1 run function hexenwerk:blocks/magical_crafting_table/magical/craft/ardo