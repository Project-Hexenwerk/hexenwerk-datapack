data remove storage hexenwerk:temp item
data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:8b}]
function hexenwerk:block/wand_crafter/return_item_to_player/spawn_item with storage hexenwerk:temp
item replace block ~ ~ ~ container.8 with minecraft:air