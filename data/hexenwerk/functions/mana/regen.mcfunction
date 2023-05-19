
scoreboard players set #mana_regen_divide hexenwerk.temp 100
execute if entity @s[tag=hexenwerk.attuned_mana_regen] run function hexenwerk:mana/regen_attuned
scoreboard players operation #mana_regen_divide hexenwerk.temp /= #default hexenwerk.mana_regen
scoreboard players operation #mana_max hexenwerk.temp = @s hexenwerk.mana_max
scoreboard players operation #mana_max hexenwerk.temp /= #mana_regen_divide hexenwerk.temp
execute unless score @s hexenwerk.mana_current > @s hexenwerk.mana_max run scoreboard players operation @s hexenwerk.mana_current += #mana_max hexenwerk.temp
execute if score @s hexenwerk.mana_current > @s hexenwerk.mana_max run scoreboard players operation @s hexenwerk.mana_current = @s hexenwerk.mana_max
execute if score @s hexenwerk.mana_current matches ..-1 run scoreboard players set @s hexenwerk.mana_current 0

# reschedule
schedule function hexenwerk:mana/run_regen 1s