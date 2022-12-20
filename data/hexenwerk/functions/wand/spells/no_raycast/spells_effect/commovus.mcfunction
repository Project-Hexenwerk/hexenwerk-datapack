tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing spell effect for spell ","color":"red"},{"text":"auxiliare ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1","color":"gold"},{"text":")","color":"red"}]


execute positioned ^ ^ ^6 run tp @s ~ ~0.5 ~

particle portal ~ ~ ~ 0 1 0 1 70

tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Commovus!","color":"aqua"}]
