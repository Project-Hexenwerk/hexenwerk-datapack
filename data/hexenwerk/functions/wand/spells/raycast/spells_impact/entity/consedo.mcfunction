tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing entity impact event for spell ","color":"red"},{"text":"consedo ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1004","color":"gold"},{"text":")","color":"red"}]
effect give @s slowness 5 100 true
particle explosion ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal


execute as @a[tag=hexenwerk.spell.caster] run tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Consedo!","color":"aqua"}]
