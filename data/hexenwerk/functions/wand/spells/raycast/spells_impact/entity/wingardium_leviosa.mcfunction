
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing entity impact event for spell ","color":"red"},{"text":"wingardium leviosa ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1002","color":"gold"},{"text":")","color":"red"}]
effect give @s levitation 2 3 true
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
