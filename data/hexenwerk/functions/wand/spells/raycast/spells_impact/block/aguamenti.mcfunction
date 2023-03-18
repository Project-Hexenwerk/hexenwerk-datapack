 
execute unless predicate hexenwerk:flags/is_in_nether run particle splash ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
execute if predicate hexenwerk:flags/is_in_nether run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0 25 normal
execute unless predicate hexenwerk:flags/is_in_nether run setblock ^ ^ ^ water
execute if predicate hexenwerk:flags/is_in_nether run playsound minecraft:block.fire.extinguish block @a ~ ~ ~
execute unless predicate hexenwerk:flags/is_in_nether run playsound minecraft:item.bucket.empty_axolotl voice @a ~ ~ ~
