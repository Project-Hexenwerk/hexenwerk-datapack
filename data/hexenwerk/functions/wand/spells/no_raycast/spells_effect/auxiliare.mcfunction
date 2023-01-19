tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing spell effect for spell ","color":"red"},{"text":"auxiliare ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1","color":"gold"},{"text":")","color":"red"}]

effect give @s regeneration 5 2 true
effect give @s slowness 5 1 true
particle wax_off ~ ~1 ~ .5 1 .5 0 15 normal
particle wax_on ~ ~1 ~ .5 1 .5 0 15 normal
