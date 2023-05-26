tag @s add hexenwerk.mystical_mob
scoreboard players add mystical_mob_max hexenwerk.id_2 1
scoreboard players operation @s hexenwerk.id_2 = mystical_mob_max hexenwerk.id_2
tag @s add hexenwerk.this
execute summon marker run function hexenwerk:mystical_mobs/marker_init
tag @s remove hexenwerk.this 

