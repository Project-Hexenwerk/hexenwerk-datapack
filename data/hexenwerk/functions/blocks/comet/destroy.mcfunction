kill @e[type=item,distance=..2,limit=1,nbt={Item: {id: "minecraft:obsidian",Count:1b}}]

execute as @p if entity @s[gamemode=survival] run loot spawn ~ ~ ~ loot hexenwerk:blocks/comet_break

execute facing ~ ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00005 0 
execute facing ~ ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00006 0 
execute facing ~ ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00007 0
execute facing ~ ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00008 0
execute facing ~ ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00009 0 
execute facing ~ ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.0001 0

execute facing ~ ~-1 ~0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00005 0 
execute facing ~ ~-1 ~0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00006 0 
execute facing ~ ~-1 ~0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00007 0
execute facing ~ ~-1 ~0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00008 0
execute facing ~ ~-1 ~0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00009 0 
execute facing ~ ~-1 ~0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.0001 0

execute facing ~ ~-1 ~-0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00005 0 
execute facing ~ ~-1 ~-0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00006 0 
execute facing ~ ~-1 ~-0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00007 0
execute facing ~ ~-1 ~-0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00008 0
execute facing ~ ~-1 ~-0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00009 0 
execute facing ~ ~-1 ~-0.75 run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.0001 0

execute facing ~0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00005 0 
execute facing ~0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00006 0 
execute facing ~0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00007 0
execute facing ~0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00008 0
execute facing ~0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00009 0 
execute facing ~0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.0001 0

execute facing ~-0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00005 0 
execute facing ~-0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00006 0 
execute facing ~-0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00007 0
execute facing ~-0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00008 0
execute facing ~-0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.00009 0 
execute facing ~-0.75 ~-1 ~ run particle minecraft:wax_off ~ ~0.5 ~ ^ ^ ^-1000000 0.0001 0

playsound particle.soul_escape block @a ~ ~ ~ 3 1.2

kill @s