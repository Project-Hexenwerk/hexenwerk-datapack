tp @s ~ ~ ~ ~5 ~

execute positioned ~ ~0.5 ~ run particle composter ^ ^ ^3 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle composter ^ ^ ^-3 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle composter ^3 ^ ^ 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle composter ^-3 ^ ^ 0 0 0 0 1

execute as @e[distance=..3] if predicate hexenwerk:percent/1 at @s run particle minecraft:heart ~-0.5 ~1.5 ~0.4
execute as @e[distance=..3] if predicate hexenwerk:percent/1 at @s run particle minecraft:heart ~ ~1 ~0.4 
execute as @e[distance=..3] if predicate hexenwerk:percent/1 at @s run particle minecraft:heart ~0.6 ~1.2 ~ 
execute as @e[distance=..3] if predicate hexenwerk:percent/1 at @s run particle minecraft:heart ~-0.6 ~1.2 ~-0.3 

effect give @a[distance=..3,predicate=!hexenwerk:flags/has_regen] regeneration 2 1 true
