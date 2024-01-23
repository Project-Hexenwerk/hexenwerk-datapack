scoreboard players reset traveled_distance hexenwerk.temp

scoreboard players operation spell_step_size hexenwerk.temp = @s hexenwerk.spell_speed
scoreboard players reset hit hexenwerk.temp
execute positioned ^ ^ ^.1 run function hexenwerk:wand/spells/generated/slowcast/step
scoreboard players operation @s hexenwerk.spell_speed = spell_step_size hexenwerk.temp
