scoreboard players set #max_raycast_travel hexenwerk.temp 10
scoreboard players operation #max_raycast_travel hexenwerk.temp *= #max_raycast_distance hexenwerk.config_only
scoreboard players add #raycast.traveled hexenwerk.temp 1

execute unless block ~ ~ ~ #hexenwerk:transparent positioned ^ ^ ^-0.1 run function hexenwerk:wand/spells/raycast/block_impact
execute if entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] run function hexenwerk:wand/spells/raycast/entity_impact

execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1001 if predicate hexenwerk:percent/20 run particle flame ^ ^ ^-0.1 0 0 0 0 1 force
execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1002 if predicate hexenwerk:percent/20 run particle end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1003 if predicate hexenwerk:percent/20 run particle ash ^ ^ ^-0.1 0 0 0 0 5 force
execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1004 if predicate hexenwerk:percent/20 run particle falling_honey ^ ^ ^-0.1 0 0 0 0 2 force
execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1006 if predicate hexenwerk:percent/5 run particle flame ^ ^ ^-0.1 0 0 0 0 1 force
execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1007 if predicate hexenwerk:percent/5 run particle end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute unless entity @e[type=player,tag=hexenwerk.spell.caster,distance=..2] if score @s hexenwerk.spell_id matches 1008 if predicate hexenwerk:percent/5 run particle minecraft:block dirt ^ ^ ^ 0.2 0.2 0.2 1 2 force

execute if score @s[predicate=!hexenwerk:flags/is_in_nether] hexenwerk.spell_id matches 1005 if predicate hexenwerk:percent/20 run particle falling_water ^ ^ ^-0.1 0 0 0 0 2
execute if score @s[predicate=hexenwerk:flags/is_in_nether] hexenwerk.spell_id matches 1005 if predicate hexenwerk:percent/5 run particle smoke ^ ^ ^-0.1 0 0 0 0 2

execute if score #raycast.traveled hexenwerk.temp >= #max_raycast_travel hexenwerk.temp run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"ending raycast after ","color":"red"},{"score":{"name":"#max_raycast_distance","objective":"hexenwerk.config_only"},"color":"gold"},{"text":" blocks","color":"red"}]

execute unless score #raycast.traveled hexenwerk.temp >= #max_raycast_travel hexenwerk.temp if block ~ ~ ~ #hexenwerk:transparent unless entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/raycast

