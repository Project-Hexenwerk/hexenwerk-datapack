clear @s light_gray_stained_glass_pane{hexenwerk.gui: 1b}

execute as @e[type=glow_item_frame,tag=hexenwerk.magical_crafting_table,tag=hexenwerk.magical_crafting_table.wand,sort=nearest,limit=1] at @s run function hexenwerk:blocks/magical_crafting_table/gui/mask/wand
execute as @e[type=glow_item_frame,tag=hexenwerk.magical_crafting_table,tag=!hexenwerk.magical_crafting_table.wand,sort=nearest,limit=1] at @s run function hexenwerk:blocks/magical_crafting_table/gui/mask/magical

scoreboard players set @s hexenwerk.took_gui 0
clear @s barrier{hexenwerk.gui: 1b}