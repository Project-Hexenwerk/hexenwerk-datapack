execute if predicate hexenwerk:percent/1 unless entity @s[tag=hexenwerk.mystical_mob.guaranteed] run function hexenwerk:mystical_mobs/actual_init
execute if entity @s[tag=hexenwerk.mystical_mob.guaranteed] run function hexenwerk:mystical_mobs/actual_init
tag @s add hexenwerk.mystical_mob.initialised

function hexenwerk:rng
scoreboard players set temp hexenwerk.temp 400
scoreboard players operation RNG hexenwerk.rng_variable %= temp hexenwerk.temp

execute if score RNG hexenwerk.rng_variable matches 1..100 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.dash
execute if score RNG hexenwerk.rng_variable matches 101..200 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.fire_explosion
execute if score RNG hexenwerk.rng_variable matches 201..300 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.teleport
execute if score RNG hexenwerk.rng_variable matches 301..400 unless entity @s[tag=hexenwerk.mystical_mob.assigned_ability] run tag @s add hexenwerk.mystical_mob.summon
tag @s add hexenwerk.mystical_mob.assigned_ability