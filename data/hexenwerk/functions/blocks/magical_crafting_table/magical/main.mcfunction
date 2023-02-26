execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b,tag:{hexenwerk-crafting_result:1b}}] at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier",tag:{hexenwerk-clear:1b}, Count: 1b}, Tags: ["hexenwerk.removed_item_21"]}
execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b,tag:{hexenwerk-crafting_result:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_21,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 15b}].id
execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b,tag:{hexenwerk-crafting_result:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_21,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 15b}].tag
execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b,tag:{hexenwerk-crafting_result:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_21,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 15b}].Count
execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b,tag:{hexenwerk-crafting_result:1b}}] run item replace block ~ ~ ~ container.15 with air

function hexenwerk:blocks/magical_crafting_table/magical/check_recipes

