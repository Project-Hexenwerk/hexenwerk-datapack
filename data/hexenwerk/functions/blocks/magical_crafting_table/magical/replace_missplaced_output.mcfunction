execute at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier",tag:{hexenwerk-clear:1b}, Count: 1b}, Tags: ["hexenwerk.removed_item_21"]}
data modify entity @e[type=item,tag=hexenwerk.removed_item_21,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 15b}].id
data modify entity @e[type=item,tag=hexenwerk.removed_item_21,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 15b}].tag
data modify entity @e[type=item,tag=hexenwerk.removed_item_21,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 15b}].Count
execute as @e[type=item,tag=hexenwerk.removed_item_21,limit=1] if data entity @s {Item:{tag:{hexenwerk-clear:1b}}} run data modify entity @s Item.tag.hexenwerk-clear set value 0b
item replace block ~ ~ ~ container.15 with air