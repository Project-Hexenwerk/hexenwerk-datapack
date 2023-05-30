 
execute align y run summon item_display ~ ~ ~ {Tags:["hexenwerk.block","smithed.block", "hexenwerk.dev_desk"],item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1727}},transformation:[1.01f,0f,0f,0f,0f,1.01f,0f,0.4999999999999999f,0f,0f,1.01f,0f,0f,0f,0f,1f],brightness:{sky:15,block:15}}
 
setblock ~ ~ ~ barrel{CustomName: '{"translate": "gui.hexenwerk.dev_desk"}'}

 
data modify block ~ ~ ~ Items set from storage hexenwerk_guis dev_desk

 
execute if entity @s[type=glow_item_frame] run kill @s