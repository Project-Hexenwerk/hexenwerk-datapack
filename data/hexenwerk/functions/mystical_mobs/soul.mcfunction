tp @s ~ ~0.6 ~ ~20 ~
execute if predicate hexenwerk:percent/5 run tp @s ~ ~ ~-0.5 
execute if predicate hexenwerk:percent/5 run tp @s ~ ~ ~0.5 
execute if predicate hexenwerk:percent/5 run tp @s ~0.5 ~ ~
execute if predicate hexenwerk:percent/5 run tp @s ~-0.5 ~ ~

particle witch ^ ^ ^1 0 0 0 0 1
particle witch ^ ^ ^-1 0 0 0 0 1
execute store result score @s hexenwerk.temp run data get entity @s Pos[2]
execute if score @s hexewnerk.temp matches 200.. run kill @s