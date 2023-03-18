 
data merge entity @s {Fire:0s}
particle splash ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
execute if predicate hexenwerk:flags/is_in_nether run playsound minecraft:block.fire.extinguish block @a ~ ~ ~
