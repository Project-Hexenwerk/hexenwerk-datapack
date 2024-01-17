tag @s add hexenwerk.this
execute as @e[type=item_display, tag=hexenwerk.glacius_spike] if score @s hexenwerk.id_2 = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id_2 run kill @s
kill @s