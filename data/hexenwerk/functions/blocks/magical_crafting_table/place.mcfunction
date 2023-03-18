 
execute align y run summon item_display ~ ~ ~ {Tags: ["hexenwerk.block", "hexenwerk.magical_crafting_table"], item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1726}},transformation:[1.01f,0f,0f,0f,0f,1.01f,0f,0.4999999999999999f,0f,0f,1.01f,0f,0f,0f,0f,1f],brightness:{sky:15,block:15}}

 
setblock ~ ~ ~ barrel{CustomName: '{"translate": "gui.hexenwerk.magical_crafting_table"}'}

 
data modify block ~ ~ ~ Items set from storage hexenwerk_guis wand_crafting

 
tag @e[type=minecraft:item_display,tag=hexenwerk.magical_crafting_table,sort=nearest,limit=1] add hexenwerk.magical_crafting_table.wand

 
scoreboard players set @e[type=minecraft:item_display,tag=hexenwerk.magical_crafting_table,sort=nearest,limit=1] hexenwerk.crafting_result_time 0

 
execute if entity @s[type=glow_item_frame] run kill @s

