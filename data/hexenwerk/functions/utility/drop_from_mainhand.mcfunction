 

tag @s add hexenwerk.drop_mainhand
summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:[hexenwerk.copy_mainhand.copy_to],PickupDelay:0s}
execute as @e[type=item,tag=hexenwerk.copy_mainhand.copy_to,limit=1,sort=nearest] at @s run data modify entity @s Item set from entity @a[tag=hexenwerk.drop_mainhand,limit=1,sort=nearest] SelectedItem
tag @s remove hexenwerk.drop_mainhand
