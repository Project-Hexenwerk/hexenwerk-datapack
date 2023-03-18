 

summon minecraft:item_display ~ ~1 ~ {item:{id:"minecraft:barrier",tag:{CustomModelData:1734},Count:1b},Glowing:1b,glow_color_override:8454143,Tags:["hexenwerk.commovus.item_display"],transformation:[1f,0f,0f,-0.375f,0f,1f,0f,-0.625f,0f,0f,1f,0f,0f,0f,0f,1f]}

tp @e[tag=hexenwerk.commovus.item_display,limit=1,sort=nearest] ~ ~1 ~ ~ 0

execute as @e[tag=hexenwerk.commovus.item_display,limit=1,sort=nearest] run data merge entity @s {item:{id:"minecraft:barrier",tag:{CustomModelData:1734},Count:1b},Glowing:1b,glow_color_override:8454143,interpolation_duration:5,start_interpolation:0,transformation:[1f,0f,0f,-0.375f,0f,0f,0f,-0.125f,0f,0f,1f,0f,0f,0f,0f,1f]}

scoreboard players set @e[tag=hexenwerk.commovus.item_display,limit=1,sort=nearest] hexenwerk.spell_event_timer 1

execute positioned ^ ^ ^6 run tp @s ~ ~0.5 ~

particle portal ~ ~ ~ 0 1 0 1 70
