
scoreboard players add #raycast.traveled hexenwerk.temp 1

execute if entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] run function hexenwerk:wand/spells/raycast/entity_impact
execute unless block ~ ~ ~ #hexenwerk:transparent positioned ^ ^ ^-0.1 run function hexenwerk:wand/spells/raycast/block_impact

execute if score @s hexenwerk.spell_id matches 1001 if predicate hexenwerk:20_percent run particle flame ^ ^ ^-0.1
execute if score @s hexenwerk.spell_id matches 1002 if predicate hexenwerk:20_percent run particle end_rod ^ ^ ^-0.1
execute if score @s hexenwerk.spell_id matches 1003 if predicate hexenwerk:20_percent run particle ash ^ ^ ^-0.1 0 0 0 0 5
execute if score @s hexenwerk.spell_id matches 1004 if predicate hexenwerk:20_percent run particle falling_honey ^ ^ ^-0.1 0 0 0 0 2
execute if score @s hexenwerk.spell_id matches 1006 if predicate hexenwerk:5_percent run particle flame ^ ^ ^-0.1
execute if score @s hexenwerk.spell_id matches 1007 if predicate hexenwerk:5_percent run particle end_rod ^ ^ ^-0.1

execute if score @s[predicate=!hexenwerk:is_in_nether] hexenwerk.spell_id matches 1005 if predicate hexenwerk:20_percent run particle falling_water ^ ^ ^-0.1 0 0 0 0 2
execute if score @s[predicate=hexenwerk:is_in_nether] hexenwerk.spell_id matches 1005 if predicate hexenwerk:5_percent run particle smoke ^ ^ ^-0.1 0 0 0 0 2

execute if score #raycast.traveled hexenwerk.temp matches 1001.. run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"ending raycast after 100 blocks","color":"red"}]


execute unless score #raycast.traveled hexenwerk.temp matches 1001.. if block ~ ~ ~ #hexenwerk:transparent unless entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/raycast



#setblock ~ ~ ~ gold_block