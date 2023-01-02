execute at @p run summon item ~ ~ ~ {Tags: ["hexenwerk.kickitem1"], Item: {id: "minecraft:barrier", Count: 1b}}
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem1,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 6b}].id
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem1,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 6b}].tag
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem1,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 6b}].Count
item replace block ~ ~ ~ container.6 with air
kill @e[type=item,tag=hexenwerk.kickitem1,nbt={Item: {id: "minecraft:barrier", Count: 1b}}]