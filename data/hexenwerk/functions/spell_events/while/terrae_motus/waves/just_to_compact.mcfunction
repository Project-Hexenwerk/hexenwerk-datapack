loot spawn ~ ~ ~ mine ~ ~-1 ~ netherite_pickaxe{hexenwerk-drop_loot:1b,Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
summon falling_block 29999983 319 29999983 {Tags:["hexenwerk.earthquake_block"],BlockState:{Name:"minecraft:command_block"},Time:0,DropItem:1b,HurtEntities:1b,FallHurtAmount:10}
data modify entity @e[type=falling_block,tag=hexenwerk.earthquake_block,limit=1] BlockState.Name set from entity @e[type=item,distance=..0.01,nbt={Age:0s},limit=1] Item.id
tp @e[type=falling_block,tag=hexenwerk.earthquake_block,limit=1] ~ ~ ~
data merge entity @e[type=falling_block,tag=hexenwerk.earthquake_block,distance=..1,sort=nearest,limit=1] {Motion:[0.0d,0.3d,0.0d]}
kill @e[type=item,distance=..0.01,nbt={Age:0s},limit=1]
kill @e[type=falling_block,tag=hexenwerk.earthquake_block,distance=..0.01,nbt={BlockState:{Name:"minecraft:command_block"}}]
tag @e[type=falling_block,tag=hexenwerk.earthquake_block,distance=..0.01] remove hexenwerk.earthquake_block
effect give @e[type=!#hexenwerk:undead,dx=1,dy=1,dz=1] instant_damage 1 1 true
effect give @e[type=#hexenwerk:undead,dx=1,dy=1,dz=1] instant_health 1 1 true
setblock ~ ~-1 ~ air

