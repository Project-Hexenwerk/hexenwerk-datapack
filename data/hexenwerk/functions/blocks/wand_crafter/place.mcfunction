tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> placing wand crafter","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> summoning glow item frame","color":"red"}]
summon glow_item_frame ~ ~ ~ {NoGravity:1b,Silent:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["hexenwerk.block","hexenwerk.wand_crafter"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:1726}}}
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting structure void","color":"red"}]
setblock ~ ~ ~ barrel

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
execute if entity @s[type=glow_item_frame] run kill @s