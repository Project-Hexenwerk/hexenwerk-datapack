 
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10 force @a[tag=!hexenwerk.hide_spell_particles]
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.1 2 force @a[tag=!hexenwerk.hide_spell_particles]
summon area_effect_cloud ~ ~ ~ {Particle:"end_rod",Radius:2.5f,RadiusPerTick:-0.083f,RadiusOnUse:0f,Duration:30,Age:0,Effects:[{Id:25,Amplifier:2b,Duration:40,ShowParticles:1b}]}
