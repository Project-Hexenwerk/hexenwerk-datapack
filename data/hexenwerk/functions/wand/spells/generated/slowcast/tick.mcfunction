execute as @e[type=marker,tag=hexenwerk.spell_ray_marker,scores={hexenwerk.spell_range=1..}] at @s run function hexenwerk:wand/spells/generated/slowcast/range

execute as @e[type=marker,tag=hexenwerk.spell_ray_marker,limit=1] run schedule function hexenwerk:wand/spells/generated/slowcast/tick 1t