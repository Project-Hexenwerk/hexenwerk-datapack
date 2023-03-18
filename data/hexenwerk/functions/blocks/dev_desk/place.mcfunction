tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> placing developers desk","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> summoning glow item frame","color":"red"}]
execute align y run summon item_display ~ ~ ~ {Tags:["hexenwerk.block", "hexenwerk.dev_desk"],item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1727}},transformation:[1.01f,0f,0f,0f,0f,1.01f,0f,0.4999999999999999f,0f,0f,1.01f,0f,0f,0f,0f,1f],brightness:{sky:15,block:15}}
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting barrel","color":"red"}]
setblock ~ ~ ~ barrel{CustomName: '{"translate": "gui.hexenwerk.dev_desk"}'}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting gui items from storage","color":"red"}]
data modify block ~ ~ ~ Items set from storage hexenwerk_guis dev_desk

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
execute if entity @s[type=glow_item_frame] run kill @s