execute if predicate hexenwerk:percent/1 unless entity @s[tag=hexenwerk.mystical_mob.guaranteed] run function hexenwerk:mystical_mobs/actual_init
execute if entity @s[tag=hexenwerk.mystical_mob.guaranteed] run function hexenwerk:mystical_mobs/actual_init
tag @s add hexenwerk.mystical_mob.initialised

