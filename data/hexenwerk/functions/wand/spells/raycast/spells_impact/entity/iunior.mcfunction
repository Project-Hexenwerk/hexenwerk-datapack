tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing entity impact event for spell ","color":"red"},{"text":"iunior ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1007","color":"gold"},{"text":")","color":"red"}]
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 5 normal
data merge entity @s {Age:-2147483647}
data merge entity @s {IsBaby:1b}
data merge entity @s {Size:0}

execute if data entity @s {IsBaby:1b} run tp @s ~ ~0.5 ~
execute if data entity @s {Size:0} run tp @s ~ ~0.5 ~
