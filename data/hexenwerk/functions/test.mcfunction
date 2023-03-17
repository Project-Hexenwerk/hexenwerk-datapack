summon minecraft:item_display ~ ~1 ~ {item:{id:"minecraft:barrier",tag:{CustomModelData:1734},Count:1b},Glowing:1b,glow_color_override:8454143,Tags:["test"],transformation:[1f,0f,0f,-0.375f,0f,1f,0f,-0.625f,0f,0f,1f,0f,0f,0f,0f,1f]}


tp @e[tag=test,limit=1,sort=nearest] ~ ~1 ~ ~ 0

execute as @e[tag=test,limit=1,sort=nearest] run data merge entity @s {item:{id:"minecraft:barrier",tag:{CustomModelData:1734},Count:1b},Glowing:1b,glow_color_override:8454143,interpolation_duration:5,start_interpolation:0,transformation:[1f,0f,0f,-0.375f,0f,0f,0f,-0.125f,0f,0f,1f,0f,0f,0f,0f,1f]}