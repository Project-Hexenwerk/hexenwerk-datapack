 
execute align y run summon item_display ~ ~ ~ {Tags:["hexenwerk.block", "hexenwerk.magical_flower"],item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1725}},transformation:[1.01f,0f,0f,0f,0f,1.01f,0f,0.4999999999999999f,0f,0f,1.01f,0f,0f,0f,0f,1f]}

 
setblock ~ ~ ~ structure_void

 
execute if entity @s[type=glow_item_frame] run kill @s