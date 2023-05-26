tp @s ~ ~0.3 ~ ~20 ~
particle witch ^ ^ ^1 0 0 0 0 1
particle witch ^-1 ^ ^ 0 0 0 0 1
execute store result score @s hexenwerk.temp run data get entity @s Pos[2]
execute if score @s hexewnerk.temp matches 200.. run kill @s