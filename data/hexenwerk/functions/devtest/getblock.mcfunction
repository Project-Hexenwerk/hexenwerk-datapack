loot spawn ~ ~ ~ mine ~ ~-1 ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
summon falling_block 29999983 319 29999983 {Tags:["current_falling_block"],BlockState:{Name:"minecraft:dirt"},Time:0,DropItem:0b,HurtEntities:1b}
setblock 29999983 319 29999983 glass
data modify entity @e[type=falling_block,tag=current_falling_block,limit=1] BlockState.Name set from entity @e[type=item,distance=..0.01,nbt={Age:0s},limit=1] Item.id
tp @e[type=falling_block,tag=current_falling_block,limit=1] ~ ~ ~
data merge entity @e[type=falling_block,tag=current_falling_block,distance=..1,sort=nearest,limit=1] {Motion:[0.0d,1d,0.0d]}
kill @e[type=item,distance=..0.01,nbt={Age:0s},limit=1]
tag @e[type=falling_block,tag=current_falling_block,distance=..0.01] remove current_falling_block
setblock ~ ~-1 ~ air