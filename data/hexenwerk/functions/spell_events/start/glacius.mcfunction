summon minecraft:item_display ~ ~1 ~ {item:{id:"minecraft:jigsaw",Count:1b,tag:{CustomModelData:1728}},transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 1.000f, 0.000f,-2.000f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f],Tags:["hexenwerk.glacius_spike","hexenwerk.anim_next_tick","hexenwerk.new"]}
scoreboard players operation @e[type=item_display,tag=hexenwerk.new] hexenwerk.id_2 = @s hexenwerk.id_2
tag @e[type=item_display,tag=hexenwerk.new] remove hexenwerk.new

execute as @a if score @s hexenwerk.id = @s hexenwerk.id run tag @s add hexenwerk.event_owner
execute as @e[distance=..1] run damage @s 7 hexenwerk:glacius by @a[tag=hexenwerk.event_owner,limit=1]


particle minecraft:item ice ~ ~ ~ 0.3 0.3 0.3 0.1 5
particle minecraft:item blue_ice ~ ~ ~ 0.3 0.3 0.3 0.1 5
particle minecraft:item packed_ice ~ ~ ~ 0.3 0.3 0.3 0.1 5