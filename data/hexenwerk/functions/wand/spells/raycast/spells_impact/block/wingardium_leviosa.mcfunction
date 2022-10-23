tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing block impact event for spell ","color":"red"},{"text":"wingardium leviosa ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1002","color":"gold"},{"text":")","color":"red"}]
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
summon area_effect_cloud ~ ~ ~ {Particle:"end_rod",Radius:2.5f,RadiusPerTick:-0.083f,RadiusOnUse:0f,Duration:30,Age:0,Effects:[{Id:25,Amplifier:2b,Duration:40,ShowParticles:1b}]}


execute as @a[tag=hexenwerk.spell.caster] run tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Wingardium Leviosa!","color":"aqua"}]
