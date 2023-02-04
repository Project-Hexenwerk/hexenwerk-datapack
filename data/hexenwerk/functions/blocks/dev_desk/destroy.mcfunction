tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> destroying magical crafting table","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> spawning loot from loottable","color":"red"}]
execute as @p if entity @s[gamemode=!creative] run loot spawn ~ ~ ~ loot hexenwerk:blocks/dev_desk
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing nearest barrel item","color":"red"}]
kill @e[type=item,distance=..2,limit=1,nbt={Item: {id: "minecraft:barrel"}}]
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
kill @s