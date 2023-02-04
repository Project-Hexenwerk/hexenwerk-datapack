clear @s barrier{hexenwerk-gui: 1b}

execute as @e[type=glow_item_frame,tag=hexenwerk.magical_crafting_table,limit=1,sort=nearest] at @s run function hexenwerk:blocks/magical_crafting_table/gui/mask/main

scoreboard players set @s hexenwerk.took_gui 0
