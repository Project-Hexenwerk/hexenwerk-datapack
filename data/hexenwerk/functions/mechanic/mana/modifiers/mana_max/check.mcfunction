execute store result score %mana_max_modifier_helmet hexenwerk.temp run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".hexenwerk.mana_max_modifier
execute store result score %mana_max_modifier_chestplate hexenwerk.temp run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".hexenwerk.mana_max_modifier
execute store result score %mana_max_modifier_leggings hexenwerk.temp run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".hexenwerk.mana_max_modifier
execute store result score %mana_max_modifier_boots hexenwerk.temp run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".hexenwerk.mana_max_modifier

scoreboard players set @s hexenwerk.mana.max_modifier 0
scoreboard players operation @s hexenwerk.mana.max_modifier += @s hexenwerk.PUBLIC.mana.max_modifier
scoreboard players operation @s hexenwerk.mana.max_modifier += %mana_max_modifier_helmet hexenwerk.temp
scoreboard players operation @s hexenwerk.mana.max_modifier += %mana_max_modifier_chestplate hexenwerk.temp
scoreboard players operation @s hexenwerk.mana.max_modifier += %mana_max_modifier_leggings hexenwerk.temp
scoreboard players operation @s hexenwerk.mana.max_modifier += %mana_max_modifier_boots hexenwerk.temp
