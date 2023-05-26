execute if entity @s[tag=hexenwerk.has_target] run scoreboard players add @s hexenwerk.mystical_mob.anger_time 1
execute unless entity @s[tag=hexenwerk.has_target] run scoreboard players set @s hexenwerk.mystical_mob.anger_time 0
execute if entity @s[scores={hexenwerk.mystical_mob.dash_time=1..}] run scoreboard players add @s hexenwerk.mystical_mob.dash_time 1
execute if predicate hexenwerk:percent/20 run tag @s remove hexenwerk.mystical_mob.used_ability

tag @e[type=#hexenwerk:mob] remove hexenwerk.this_target
tag @s remove hexenwerk.has_target

tag @s add hexenwerk.this
execute on target run tag @s add hexenwerk.this_target
execute on target run tag @e[type=#hexenwerk:mob,tag=hexenwerk.this] add hexenwerk.has_target
execute on target at @s run summon marker ~ ~ ~ {Tags:["hexenwerk.fake_target"]}
execute as @e[type=marker,tag=hexenwerk.fake_target,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=#hexenwerk:mob,tag=hexenwerk.this,limit=1]
execute if entity @s[tag=hexenwerk.has_target,tag=!hexenwerk.mystical_mob.used_ability,scores={hexenwerk.mystical_mob.anger_time=50..},predicate=hexenwerk:percent/1] if score @s hexenwerk.mystical_mob.dash_time matches 0 unless entity @e[tag=hexenwerk.this_target,limit=1,distance=..3] rotated as @e[tag=hexenwerk.fake_target,limit=1] rotated ~180 ~ run scoreboard players add @s hexenwerk.mystical_mob.dash_time 1 
execute if score @s hexenwerk.mystical_mob.dash_time matches 1..10 run particle minecraft:crimson_spore ~ ~1 ~ 0.2 0.5 0.2 0 5
execute if score @s hexenwerk.mystical_mob.dash_time matches 1..10 run particle minecraft:smoke ~ ~1 ~ 0.2 0.5 0.2 0 40
execute if score @s hexenwerk.mystical_mob.dash_time matches 10 run function hexenwerk:mystical_mobs/abilities/dash/run
tag @s remove hexenwerk.this
kill @e[type=marker,tag=hexenwerk.fake_target,limit=1]

