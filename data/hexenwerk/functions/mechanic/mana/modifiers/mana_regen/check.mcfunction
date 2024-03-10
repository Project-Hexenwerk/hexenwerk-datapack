execute store result score %mana_regen_modifier_helmet hexenwerk.temp run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".hexenwerk.mana_regen_modifier
execute store result score %mana_regen_modifier_chestplate hexenwerk.temp run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".hexenwerk.mana_regen_modifier
execute store result score %mana_regen_modifier_leggings hexenwerk.temp run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".hexenwerk.mana_regen_modifier
execute store result score %mana_regen_modifier_boots hexenwerk.temp run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".hexenwerk.mana_regen_modifier

scoreboard players set @s hexenwerk.mana.regen_modifier 0
scoreboard players operation @s hexenwerk.mana.regen_modifier += @s hexenwerk.PUBLIC.mana.regenhexenwerk.mana.regen_modifier
scoreboard players operation @s hexenwerk.mana.regen_modifier += %mana_regen_modifier_helmet hexenwerk.temp
scoreboard players operation @s hexenwerk.mana.regen_modifier += %mana_regen_modifier_chestplate hexenwerk.temp
scoreboard players operation @s hexenwerk.mana.regen_modifier += %mana_regen_modifier_leggings hexenwerk.temp
scoreboard players operation @s hexenwerk.mana.regen_modifier += %mana_regen_modifier_boots hexenwerk.temp