kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk-gui: 1b}}}]
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk-gui_but_not_actually: 1b}}}]
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk-clear: 1b}}}]

execute as @a store result score @s hexenwerk.took_gui run clear @s #hexenwerk:clear{hexenwerk-gui: 1b} 0
execute as @a[scores={hexenwerk.took_gui=1..}] at @s run function hexenwerk:blocks/magical_crafting_table/gui/fix_items

clear @a barrier{hexenwerk-gui_but_not_actually: 1b} 

schedule function hexenwerk:blocks/remove_gui_items 5t
