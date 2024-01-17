execute unless predicate hexenwerk:flags/is_in_nether run particle splash ^ ^ ^-0.1 0.1 0.1 0.1 0.2 10 force @a[tag=!hexenwerk.hide_spell_particles]
particle minecraft:large_smoke ^ ^ ^-0.1 0.1 0.1 0.1 0.1 2 force @a[tag=!hexenwerk.hide_spell_particles]
execute if predicate hexenwerk:flags/is_in_nether run particle minecraft:large_smoke ^ ^ ^-0.1 0.5 0.5 0.5 0 25 force @a[tag=!hexenwerk.hide_spell_particles]
execute unless predicate hexenwerk:flags/is_in_nether run setblock ^ ^ ^-0.1 water
execute if predicate hexenwerk:flags/is_in_nether run playsound minecraft:block.fire.extinguish block @a ^ ^ ^-0.1
execute unless predicate hexenwerk:flags/is_in_nether run playsound minecraft:item.bucket.empty_axolotl voice @a ^ ^ ^-0.1
