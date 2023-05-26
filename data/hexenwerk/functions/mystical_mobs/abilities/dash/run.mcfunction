# code stolen from timberforge on youtube
particle cloud ~ ~ ~ 0.4 0.8 0.4 0 5
particle witch ~ ~ ~ 0.4 0.8 0.4 0 10
particle explosion ~ ~ ~ 0.4 0.8 0.4 0 3

execute store result score x1 hexenwerk.temp run data get entity @s Pos[0] 1000000
execute store result score y1 hexenwerk.temp run data get entity @s Pos[1] 1000000
execute store result score z1 hexenwerk.temp run data get entity @s Pos[2] 1000000

execute positioned ~ ~0.003 ~ run tp @s ^ ^ ^0.1 

execute store result score x2 hexenwerk.temp run data get entity @s Pos[0] 1000000
execute store result score y2 hexenwerk.temp run data get entity @s Pos[1] 1000000
execute store result score z2 hexenwerk.temp run data get entity @s Pos[2] 1000000

scoreboard players operation x2 hexenwerk.temp -= x1 hexenwerk.temp
scoreboard players operation y2 hexenwerk.temp -= y1 hexenwerk.temp
scoreboard players operation z2 hexenwerk.temp -= z1 hexenwerk.temp

execute store result entity @s Motion[0] double 0.00003 run scoreboard players get x2 hexenwerk.temp
execute store result entity @s Motion[1] double 0.00007 run scoreboard players get y2 hexenwerk.temp
execute store result entity @s Motion[2] double 0.00003 run scoreboard players get z2 hexenwerk.temp

execute as @e[tag=hexenwerk.fake_target,limit=1] rotated ~180 ~ run tp @s ~ ~ ~
tag @s add hexenwerk.mystical_mob.used_ability
scoreboard players set @s hexenwerk.mystical_mob.dash_time 0