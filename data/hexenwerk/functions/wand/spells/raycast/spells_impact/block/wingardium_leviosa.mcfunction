tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing block impact event for spell ","color":"red"},{"text":"wingardium leviosa ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1001","color":"gold"},{"text":")","color":"red"}]
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
summon area_effect_cloud ~ ~ ~ {Particle:"end_rod",Radius:30f,RadiusPerTick:1f,RadiusOnUse:0f,Effects:[{Id:25,Amplifier:2b,Duration:3,ShowParticles:1b}]}