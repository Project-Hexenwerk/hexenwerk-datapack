 
execute as @p if entity @s[gamemode=!creative] run loot spawn ~ ~ ~ loot hexenwerk:blocks/dev_desk
 
kill @e[type=item,distance=..2,limit=1,nbt={Item: {id: "minecraft:barrel"}}]
 
kill @s