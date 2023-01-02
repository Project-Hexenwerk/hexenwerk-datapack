execute at @p run summon item ~ ~ ~ {Item: {id: "minecraft:barrier", tag: {Changed: 0b}, Count: 1b}, Tags: ["extraitem"]}

execute unless data block ~ ~ ~ Items[{Slot: 0b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 0b}].id
execute unless data block ~ ~ ~ Items[{Slot: 4b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 4b}].id
execute unless data block ~ ~ ~ Items[{Slot: 5b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 5b}].id
execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 6b}].id
execute unless data block ~ ~ ~ Items[{Slot: 7b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 7b}].id
execute unless data block ~ ~ ~ Items[{Slot: 8b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 8b}].id
execute unless data block ~ ~ ~ Items[{Slot: 9b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 9b}].id
execute unless data block ~ ~ ~ Items[{Slot: 13b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 13b}].id
execute unless data block ~ ~ ~ Items[{Slot: 14b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 14b}].id
execute unless data block ~ ~ ~ Items[{Slot: 16b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 16b}].id
execute unless data block ~ ~ ~ Items[{Slot: 17b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 17b}].id
execute unless data block ~ ~ ~ Items[{Slot: 18b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 18b}].id
execute unless data block ~ ~ ~ Items[{Slot: 22b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 22b}].id
execute unless data block ~ ~ ~ Items[{Slot: 23b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 23b}].id
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 24b}].id
execute unless data block ~ ~ ~ Items[{Slot: 25b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 25b}].id
execute unless data block ~ ~ ~ Items[{Slot: 26b, tag: {hexenwerk.gui_but_not_actually: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 26b}].id

execute unless data block ~ ~ ~ Items[{Slot: 0b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 0b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 4b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 4b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 5b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 5b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 6b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 7b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 7b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 8b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 8b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 9b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 9b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 13b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 13b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 14b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 14b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 16b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 16b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 17b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 17b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 18b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 18b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 22b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 22b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 23b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 23b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 24b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 25b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 25b}].tag
execute unless data block ~ ~ ~ Items[{Slot: 26b, tag: {hexenwerk.gui_but_not_actually: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 26b}].tag


execute unless data block ~ ~ ~ Items[{Slot: 0b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 0b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 4b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 4b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 5b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 5b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 6b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 7b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 7b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 8b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 8b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 9b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 9b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 13b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 13b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 14b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 14b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 16b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 16b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 17b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 17b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 18b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 18b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 22b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 22b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 23b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 23b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 24b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 25b, tag: {hexenwerk.gui: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 25b}].Count
execute unless data block ~ ~ ~ Items[{Slot: 26b, tag: {hexenwerk.gui_but_not_actually: 1b}}] run data modify entity @e[type=item,tag=extraitem,sort=nearest,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 26b}].Count

data remove entity @e[type=item,tag=extraitem,nbt=!{Item: {id: "minecraft:barrier", Count: 1b}},nbt={Item: {tag: {Changed: 0b}}},sort=nearest,limit=1] Item.tag.Changed
tag @e[type=item,tag=extraitem,nbt=!{Item: {tag: {Changed: 0b}, id: "minecraft:barrier", Count: 1b}}] remove extraitem
kill @e[type=item,tag=extraitem]
