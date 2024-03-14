data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:7b}]
function hexenwerk:block/magical_crafting_table/return_item_to_player/spawn_item with storage hexenwerk:temp
item replace block ~ ~ ~ container.7 with minecraft:air