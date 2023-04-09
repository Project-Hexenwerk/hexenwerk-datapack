execute as @p if entity @s[gamemode=!creative] run loot spawn ~ ~ ~ loot hexenwerk:blocks/magical_crafting_table
 
kill @e[type=item,distance=..2,limit=1,nbt={Item: {id: "minecraft:barrel"}}]
 
execute if entity @s[tag=hexenwerk.magical_crafting_table.wand] if data block ~ ~ ~ Items[{Slot:12b, tag:{hexenwerk-wand:1b}}] run kill @e[type=item,distance=..2,sort=nearest,limit=3,nbt={Item: {id: "minecraft:book",tag:{hexenwerk-spellbook:1b}},Age:0s}]
 
kill @e[type=item,nbt={Item:{tag:{hexenwerk-crafting_result:1b}}},distance=..1,limit=1]
kill @s