scoreboard players operation %mana_max hexenwerk.temp = %mana_max hexenwerk.default
scoreboard players operation %mana_max hexenwerk.temp += @s hexenwerk.mana.max_modifier

execute if score @s hexenwerk.mana > %mana_max hexenwerk.temp run scoreboard players operation @s hexenwerk.mana = %mana_max hexenwerk.temp

execute if score @s hexenwerk.mana < %mana_max hexenwerk.temp run function hexenwerk:mechanic/mana/regenerate/regenerate