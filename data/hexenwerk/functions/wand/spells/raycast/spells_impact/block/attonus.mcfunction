tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing block impact event for spell ","color":"red"},{"text":"attonus ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1003","color":"gold"},{"text":")","color":"red"}]

particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
execute unless entity @s[tag=hexenwerk.attonus_blacklist] run summon tnt ~ ~ ~
execute if entity @s[tag=hexenwerk.attonus_blacklist] run particle explosion_emitter ~ ~ ~ 0 0 0 1 2