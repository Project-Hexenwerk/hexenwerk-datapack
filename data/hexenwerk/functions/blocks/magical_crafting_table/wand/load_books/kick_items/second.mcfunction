execute at @p run summon item ~ ~ ~ {Tags: ["hexenwerk.kickitem2"], Item: {id: "minecraft:barrier", Count: 1b}}
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem2,limit=1] Item.id set from block ~ ~ ~ Items[{Slot: 15b}].id
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem2,limit=1] Item.tag set from block ~ ~ ~ Items[{Slot: 15b}].tag
data modify entity @e[type=item,sort=nearest,tag=hexenwerk.kickitem2,limit=1] Item.Count set from block ~ ~ ~ Items[{Slot: 15b}].Count
item replace block ~ ~ ~ container.15 with air
kill @e[type=item,tag=hexenwerk.kickitem2,nbt={Item: {id: "minecraft:barrier", Count: 1b}}]