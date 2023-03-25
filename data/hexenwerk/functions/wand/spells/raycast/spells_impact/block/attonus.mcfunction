 

particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 force @a[tag=!hexenwerk.hide_spell_particles]
execute unless entity @s[tag=hexenwerk.attonus_blacklist] run summon tnt ~ ~ ~
execute if entity @s[tag=hexenwerk.attonus_blacklist] run particle explosion_emitter ~ ~ ~ 0 0 0 1 2