tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> placing magical crafting table","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> summoning glow item frame","color":"red"}]
execute align y run summon item_display ~ ~ ~ {Tags: ["hexenwerk.block", "hexenwerk.magical_crafting_table"], item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1726}},transformation:[1.01f,0f,0f,0f,0f,1.01f,0f,0.4999999999999999f,0f,0f,1.01f,0f,0f,0f,0f,1f],brightness:{sky:15,block:15}}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting barrel","color":"red"}]
setblock ~ ~ ~ barrel{CustomName: '{"translate": "gui.hexenwerk.magical_crafting_table"}'}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting gui items from storage","color":"red"}]
data modify block ~ ~ ~ Items set from storage hexenwerk_guis wand_crafting

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> adding \"hexenwerk.magical_crafting_table.wand\" tag","color":"red"}]
tag @e[type=minecraft:item_display,tag=hexenwerk.magical_crafting_table,sort=nearest,limit=1] add hexenwerk.magical_crafting_table.wand

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> reset \"hexenwerk.crafting_result_time\" for self","color":"red"}]
scoreboard players set @e[type=minecraft:item_display,tag=hexenwerk.magical_crafting_table,sort=nearest,limit=1] hexenwerk.crafting_result_time 0

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
execute if entity @s[type=glow_item_frame] run kill @s

