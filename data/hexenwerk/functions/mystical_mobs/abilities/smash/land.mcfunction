tag @s add hexenwerk.this
execute as @e[distance=0.2..] run damage @s 10 hexenwerk:mystical_mobs/smash by @e[tag=hexenwerk.this,limit=1]
tag @s remove hexenwerk.this

tag @s remove hexenwerk.mystical_mob.smashing_down
particle cloud ~ ~ ~ 0.3 0 0.3 1 30 normal
say smashing the flooe