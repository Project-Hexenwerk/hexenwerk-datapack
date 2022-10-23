tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing spell effect for spell ","color":"red"},{"text":"auxiliare ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1","color":"gold"},{"text":")","color":"red"}]


tp @s ^ ^ ^6
particle portal ~ ~ ~ 0 1 0 1 70


execute as @a[tag=hexenwerk.spell.caster] run tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Commovus!","color":"aqua"}]
