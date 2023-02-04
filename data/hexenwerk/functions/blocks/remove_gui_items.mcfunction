kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk-gui: 1b}}}]
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk-gui_but_not_actually: 1b}}}]
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk-clear: 1b}}}]

clear @a barrier{hexenwerk-gui_but_not_actually: 1b} 
clear @a barrier{hexenwerk-clear: 1b} 
clear @a book{hexenwerk-clear: 1b} 
clear @a repeating_command_block{hexenwerk-clear: 1b}
clear @a glow_item_frame{hexenwerk-clear: 1b}

schedule function hexenwerk:blocks/remove_gui_items 5t