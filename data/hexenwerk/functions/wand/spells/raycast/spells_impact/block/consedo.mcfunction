tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing block impact event for spell ","color":"red"},{"text":"consedo ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1004","color":"gold"},{"text":")","color":"red"}]
particle explosion ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
summon area_effect_cloud ~ ~ ~ {Particle:"dripping_honey",Radius:2.5f,RadiusPerTick:-0.083f,RadiusOnUse:0f,Duration:20,Age:0,Effects:[{Id:2,Amplifier:2b,Duration:40,ShowParticles:1b}]}


execute as @a[tag=hexenwerk.spell.caster] run tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Consedo!","color":"aqua"}]
