scoreboard players operation %mana_regen hexenwerk.temp = %mana_regen hexenwerk.default
scoreboard players operation %mana_regen hexenwerk.temp += @s hexenwerk.mana.regen_modifier

scoreboard players operation %mana_regen_amount hexenwerk.temp = %mana_max hexenwerk.temp
scoreboard players operation %mana_regen_amount hexenwerk.temp /= 100 hexenwerk.const
scoreboard players operation %mana_regen_amount hexenwerk.temp *= %mana_regen hexenwerk.temp

scoreboard players operation @s hexenwerk.mana += %mana_regen_amount hexenwerk.temp