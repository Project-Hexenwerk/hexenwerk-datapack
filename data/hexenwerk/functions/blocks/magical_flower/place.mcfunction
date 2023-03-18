tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> placing flower","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> summoning glow item frame","color":"red"}]
execute align y run summon item_display ~ ~ ~ {Tags:["hexenwerk.block", "hexenwerk.magical_flower"],item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1725}},transformation:[1.01f,0f,0f,0f,0f,1.01f,0f,0.4999999999999999f,0f,0f,1.01f,0f,0f,0f,0f,1f]}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting structure void","color":"red"}]
setblock ~ ~ ~ structure_void

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
execute if entity @s[type=glow_item_frame] run kill @s