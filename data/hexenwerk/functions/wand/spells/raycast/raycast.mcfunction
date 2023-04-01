scoreboard players add #raycast.traveled hexenwerk.temp 1

execute if entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] run function hexenwerk:wand/spells/raycast/entity_impact
execute unless block ~ ~ ~ #hexenwerk:transparent positioned ^ ^ ^-0.1 run function hexenwerk:wand/spells/raycast/block_impact

execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..1] run function hexenwerk:wand/spells/raycast/particle

execute if score @s[predicate=!hexenwerk:flags/is_in_nether] hexenwerk.spell_id matches 1005 if predicate hexenwerk:percent/20 run particle falling_water ^ ^ ^-0.1 0 0 0 0 2
execute if score @s[predicate=hexenwerk:flags/is_in_nether] hexenwerk.spell_id matches 1005 if predicate hexenwerk:percent/5 run particle smoke ^ ^ ^-0.1 0 0 0 0 2

execute positioned ^ ^ ^0.1 if entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] run tellraw @s {"text":"Your spell was blocked since it entered a protected area!","color": "red"}
execute positioned ^ ^ ^0.1 if entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] run particle crit ~ ~ ~ .1 .1 .1 1 10

execute unless score #raycast.traveled hexenwerk.temp >= @s hexenwerk.temp if block ~ ~ ~ #hexenwerk:transparent unless entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] positioned ^ ^ ^0.1 unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] run function hexenwerk:wand/spells/raycast/raycast
