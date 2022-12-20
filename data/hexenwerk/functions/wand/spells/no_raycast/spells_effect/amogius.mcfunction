tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing spell effect for spell ","color":"red"},{"text":"amogius ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"3","color":"gold"},{"text":")","color":"red"}]

scoreboard players add @s hexenwerk.mana_current 10

tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Amogius!","color":"aqua"}]
