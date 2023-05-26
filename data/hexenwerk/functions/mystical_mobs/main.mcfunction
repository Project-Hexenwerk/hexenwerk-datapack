tag @s add hexenwerk.this
execute as @e[type=marker,tag=hexenwerk.mystical_mob.marker] at @s if score @s hexenwerk.id_2 = @e[type=#hexenwerk:mob,tag=hexenwerk.mystical_mob,tag=hexenwerk.this,limit=1] hexenwerk.id_2 run function hexenwerk:mystical_mobs/particles
tag @s remove hexenwerk.this

particle minecraft:smoke ~ ~0.5 ~ 0.2 0.4 0.2 0 1 normal

execute if entity @s[tag=hexenwerk.mystical_mob.dash] run function hexenwerk:mystical_mobs/abilities/dash/main
