tag @s add hexenwerk.drop_offhand
summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:[hexenwerk.copy_offhand.copy_to],PickupDelay:0s}
execute as @e[type=item,tag=hexenwerk.copy_offhand.copy_to,limit=1,sort=nearest] at @s run data modify entity @s Item set from entity @a[tag=hexenwerk.drop_offhand,limit=1,sort=nearest] Inventory[{Slot:-106b}]
tag @s remove hexenwerk.drop_offhand
