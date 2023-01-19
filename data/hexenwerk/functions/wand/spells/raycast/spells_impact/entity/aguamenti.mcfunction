tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing entity impact event for spell ","color":"red"},{"text":"aguamenti ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1005","color":"gold"},{"text":")","color":"red"}]
data merge entity @s {Fire:0s}
particle splash ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
execute if predicate hexenwerk:is_in_nether run playsound minecraft:block.fire.extinguish block @a ~ ~ ~
