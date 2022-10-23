tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing block impact event for spell ","color":"red"},{"text":"attonus ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1003","color":"gold"},{"text":")","color":"red"}]
particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
summon tnt ~ ~ ~


execute as @a[tag=hexenwerk.spell.caster] run tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Attonus!","color":"aqua"}]
