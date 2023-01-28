tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> raycast hit block ","color":"red"}]
scoreboard players operation .current hexenwerk.spell_id = @s hexenwerk.spell_id
execute align xz positioned ~.5 ~ ~.5 run function hexenwerk:wand/spells/raycast/block_impact_run
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1001 run function hexenwerk:wand/spells/raycast/spells_impact/block/ardo
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1002 run function hexenwerk:wand/spells/raycast/spells_impact/block/wingardium_leviosa
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1003 run function hexenwerk:wand/spells/raycast/spells_impact/block/attonus
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1004 run function hexenwerk:wand/spells/raycast/spells_impact/block/consedo
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1005 run function hexenwerk:wand/spells/raycast/spells_impact/block/aguamenti
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1006 run function hexenwerk:wand/spells/raycast/spells_impact/ignis_temptates
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1007 run function hexenwerk:wand/spells/raycast/spells_impact/block/iunior
execute align xz positioned ~0.5 ~ ~0.5 if score @s hexenwerk.spell_id matches 1008 run function hexenwerk:wand/spells/raycast/spells_impact/terrae_motus

tag @s remove hexenwerk.spell.caster