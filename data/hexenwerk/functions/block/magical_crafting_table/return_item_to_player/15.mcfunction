data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:15b}]
function hexenwerk:block/magical_crafting_table/return_item_to_player/spawn_item with storage hexenwerk:temp
item replace block ~ ~ ~ container.15 with minecraft:air