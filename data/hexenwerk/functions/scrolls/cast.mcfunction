data remove storage hexenwerk:temp wand_data
execute unless predicate hexenwerk:holding/scroll_offhand run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-spell_data
execute unless predicate hexenwerk:holding/scroll run data modify storage hexenwerk:temp wand_data set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data

execute unless predicate hexenwerk:holding/scroll_offhand store result score @s hexenwerk.mana_cost run data get entity @s SelectedItem.tag.hexenwerk-spell_data.mana_cost
execute if predicate hexenwerk:holding/scroll_offhand store result score @s hexenwerk.mana_cost run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data.mana_cost

scoreboard players set @s hexenwerk.temp 0

scoreboard players operation @s hexenwerk.mana_cost -= @s hexenwerk.temp
execute unless entity @s[gamemode=creative] unless entity @s[tag=hexenwerk.ignore_mana_cost] unless score @s hexenwerk.mana_cost >= @s hexenwerk.mana_current run scoreboard players operation @s hexenwerk.mana_current -= @s hexenwerk.mana_cost

execute if score @s hexenwerk.mana_cost > @s hexenwerk.mana_current run tellraw @s {"translate":"text.hexenwerk.spell.not_enough_mana","color":"red"}
execute if score @s hexenwerk.mana_cost <= @s hexenwerk.mana_current if data storage hexenwerk:temp wand_data.id run function hexenwerk:wand/spells/generated/start
scoreboard players set @s hexenwerk.used_wfoas 0