data remove storage hexenwerk:temp item
data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:13b}]
function hexenwerk:block/wand_crafter/return_item_to_player/spawn_item with storage hexenwerk:temp
item replace block ~ ~ ~ container.13 with minecraft:air