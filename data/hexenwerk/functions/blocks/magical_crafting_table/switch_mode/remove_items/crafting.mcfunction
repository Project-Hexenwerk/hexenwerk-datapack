
execute if data block ~ ~ ~ Items[{Slot: 6b}] unless data block ~ ~ ~ Items[{Slot: 6b, tag:{hexenwerk-spellbook:1b}}] at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier",tag:{hexenwerk.clear:1b}, Count: 1b}, Tags: ["hexenwerk.removed_item_1"]}
execute if data block ~ ~ ~ Items[{Slot: 6b}] unless data block ~ ~ ~ Items[{Slot: 6b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_1,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 6b}].id
execute if data block ~ ~ ~ Items[{Slot: 6b}] unless data block ~ ~ ~ Items[{Slot: 6b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_1,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 6b}].tag
execute if data block ~ ~ ~ Items[{Slot: 6b}] unless data block ~ ~ ~ Items[{Slot: 6b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_1,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 6b}].Count

execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b, tag:{hexenwerk-spellbook:1b}}] at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier",tag:{hexenwerk.clear:1b}, Count: 1b}, Tags: ["hexenwerk.removed_item_2"]}
execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_2,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 15b}].id
execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_2,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 15b}].tag
execute if data block ~ ~ ~ Items[{Slot: 15b}] run data modify entity @e[type=item,tag=hexenwerk.removed_item_2,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 15b}].Count

execute if data block ~ ~ ~ Items[{Slot: 24b}] unless data block ~ ~ ~ Items[{Slot: 24b, tag:{hexenwerk-spellbook:1b}}] at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier",tag:{hexenwerk.clear:1b}, Count: 1b}, Tags: ["hexenwerk-removed_item_3"]}
execute if data block ~ ~ ~ Items[{Slot: 24b}] unless data block ~ ~ ~ Items[{Slot: 24b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk-removed_item_3,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 24b}].id
execute if data block ~ ~ ~ Items[{Slot: 24b}] unless data block ~ ~ ~ Items[{Slot: 24b, tag:{hexenwerk-spellbook:1b}}] run data modify entity @e[type=item,tag=hexenwerk-removed_item_3,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 24b}].tag
execute if data block ~ ~ ~ Items[{Slot: 24b}] run data modify entity @e[type=item,tag=hexenwerk-removed_item_3,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 24b}].Count

execute if data block ~ ~ ~ Items[{Slot: 12b}] at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier",tag:{hexenwerk.clear:1b}, Count: 1b}, Tags: ["hexenwerk-removed_item_4"]}
execute if data block ~ ~ ~ Items[{Slot: 12b}] run data modify entity @e[type=item,tag=hexenwerk-removed_item_4,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 12b}].id
execute if data block ~ ~ ~ Items[{Slot: 12b}] run data modify entity @e[type=item,tag=hexenwerk-removed_item_4,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 12b}].tag
execute if data block ~ ~ ~ Items[{Slot: 12b}] run data modify entity @e[type=item,tag=hexenwerk-removed_item_4,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 12b}].Count

item replace block ~ ~ ~ container.17 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.12 with air
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
