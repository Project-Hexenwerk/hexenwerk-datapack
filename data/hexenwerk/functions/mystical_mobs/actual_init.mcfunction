tag @s add hexenwerk.mystical_mob
scoreboard players add mystical_mob_max hexenwerk.id_2 1
scoreboard players operation @s hexenwerk.id_2 = mystical_mob_max hexenwerk.id_2
tag @s add hexenwerk.this
execute summon marker run function hexenwerk:mystical_mobs/marker_init
tag @s remove hexenwerk.this 

function hexenwerk:rng
scoreboard players set temp hexenwerk.temp 400
scoreboard players operation RNG hexenwerk.rng_variable %= temp hexenwerk.temp

execute if score RNG hexenwerk.rng_variable matches 1..100 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.dash
execute if score RNG hexenwerk.rng_variable matches 101..200 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.smash
execute if score RNG hexenwerk.rng_variable matches 201..300 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.teleport
execute if score RNG hexenwerk.rng_variable matches 301..400 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.summon
tag @s add hexenwerk.mystical_mob.assigned_ability
tag @s add smithed.entity

scoreboard players set @s hexenwerk.mystical_mob.ability_time 0