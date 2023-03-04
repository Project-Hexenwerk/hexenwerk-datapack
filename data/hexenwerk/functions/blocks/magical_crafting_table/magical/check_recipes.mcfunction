scoreboard players set @s hexenwerk.crafting_recipe 0

data merge entity @s {Item:{tag:{RecipeItems:[]}}}
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:1b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:2b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:10b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:11b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:12b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:19b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:20b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:21b}]

# Ardo
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:fire_charge"}] run scoreboard players set @s hexenwerk.crafting_recipe 1

# Generic Spellbook
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book"}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 2

# Auxiliare
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:glistering_melon_slice"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:scute"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:scute"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:glistering_melon_slice"}] run scoreboard players set @s hexenwerk.crafting_recipe 3

# Wingardium Leviosa
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:shulker_shell"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:shulker_shell"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:shulker_shell"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:ender_pearl"}] run scoreboard players set @s hexenwerk.crafting_recipe 4

# Commovus
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:ender_eye"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:ender_pearl"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:ender_pearl"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:ender_eye"}] run scoreboard players set @s hexenwerk.crafting_recipe 5

# Aguamenti
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:cod"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:cod"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:cod"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:water_bucket"}] run scoreboard players set @s hexenwerk.crafting_recipe 6

execute if score @s hexenwerk.crafting_recipe matches 0 run item replace block ~ ~ ~ container.15 with air
execute if score @s hexenwerk.crafting_recipe matches 0 run scoreboard players set @s hexenwerk.crafting_result_time 0

execute if score @s hexenwerk.crafting_recipe matches 1 run function hexenwerk:blocks/magical_crafting_table/magical/craft/ardo
execute if score @s hexenwerk.crafting_recipe matches 2 run function hexenwerk:blocks/magical_crafting_table/magical/craft/generic
execute if score @s hexenwerk.crafting_recipe matches 3 run function hexenwerk:blocks/magical_crafting_table/magical/craft/auxiliare
execute if score @s hexenwerk.crafting_recipe matches 4 run function hexenwerk:blocks/magical_crafting_table/magical/craft/wingardium_leviosa
execute if score @s hexenwerk.crafting_recipe matches 5 run function hexenwerk:blocks/magical_crafting_table/magical/craft/commovus
execute if score @s hexenwerk.crafting_recipe matches 6 run function hexenwerk:blocks/magical_crafting_table/magical/craft/aguamenti

