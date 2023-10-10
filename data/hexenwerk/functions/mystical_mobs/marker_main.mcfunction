tag @s remove hexenwerk.mystical_mobs.not_dead
tag @s add hexenwerk.this
execute on vehicle run tag @e[type=marker,tag=hexenwerk.this,sort=nearest,limit=1] add hexenwerk.mystical_mobs.not_dead
execute unless entity @s[tag=hexenwerk.mystical_mobs.not_dead] run function hexenwerk:mystical_mobs/die/main