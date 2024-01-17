execute at @p run summon item ~ ~ ~ {Tags: ["hexenwerk.kickitem4"], Item: {id: "minecraft:barrier", Count: 1b}}
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem4,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 5b}].id
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem4,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 5b}].tag
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem4,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 5b}].Count
item replace block ~ ~ ~ container.24 with air
kill @e[type=item,tag=hexenwerk.kickitem4,nbt={Item: {id: "minecraft:barrier", Count: 1b}}]
