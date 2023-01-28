kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk.gui: 1b}}}]
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk.gui_but_not_actually: 1b}}}]

clear @a barrier{hexenwerk.gui_but_not_actually: 1b} 1
clear @a barrier{hexenwerk.clear: 1b} 1

schedule function hexenwerk:blocks/remove_gui_items 5t