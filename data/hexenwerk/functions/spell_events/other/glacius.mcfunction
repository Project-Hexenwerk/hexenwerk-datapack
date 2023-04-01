tag @s add hexenwerk.this
execute as @e[type=item_display, tag=hexenwerk.glacius_spike] if score @s hexenwerk.id_2 = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id_2 run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,0.000f,0.000f, 0.000f, 0.000f,-1.000f,0.000f, 0.000f, 1.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}
tag @s remove hexenwerk.this
