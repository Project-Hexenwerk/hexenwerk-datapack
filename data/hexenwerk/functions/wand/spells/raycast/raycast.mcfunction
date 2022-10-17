
execute if entity @e[dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] run function hexenwerk:wand/spells/raycast/entity_impact
execute unless block ~ ~ ~ #hexenwerk:transparent positioned ^ ^ ^-0.1 run function hexenwerk:wand/spells/raycast/block_impact


execute if score @s hexenwerk.spell_id matches 1001 if predicate hexenwerk:20_percent run particle flame ^ ^ ^-0.1 
execute if score @s hexenwerk.spell_id matches 1002 if predicate hexenwerk:20_percent run particle end_rod ^ ^ ^-0.1 


execute if block ~ ~ ~ #hexenwerk:transparent unless entity @e[dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/raycast

#setblock ~ ~ ~ gold_block