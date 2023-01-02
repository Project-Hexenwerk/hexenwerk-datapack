execute at @p run summon item ~ ~ ~ {Tags: ["hexenwerk.kickitem3"], Item: {id: "minecraft:barrier", Count: 1b}}
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem3,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 24b}].id
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem3,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 24b}].tag
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem3,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 24b}].Count
item replace block ~ ~ ~ container.24 with air
kill @e[type=item,tag=hexenwerk.kickitem3,nbt={Item: {id: "minecraft:barrier", Count: 1b}}]
