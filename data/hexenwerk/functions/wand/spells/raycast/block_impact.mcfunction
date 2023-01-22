tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> raycast hit block ","color":"red"}]
execute if score @s hexenwerk.spell_id matches 1001 run function hexenwerk:wand/spells/raycast/spells_impact/block/ardo
execute if score @s hexenwerk.spell_id matches 1002 run function hexenwerk:wand/spells/raycast/spells_impact/block/wingardium_leviosa
execute if score @s hexenwerk.spell_id matches 1003 run function hexenwerk:wand/spells/raycast/spells_impact/block/attonus
execute if score @s hexenwerk.spell_id matches 1004 run function hexenwerk:wand/spells/raycast/spells_impact/block/consedo
execute if score @s hexenwerk.spell_id matches 1005 run function hexenwerk:wand/spells/raycast/spells_impact/block/aguamenti
execute if score @s hexenwerk.spell_id matches 1006 run function hexenwerk:wand/spells/raycast/spells_impact/ignis_temptates
execute if score @s hexenwerk.spell_id matches 1007 run function hexenwerk:wand/spells/raycast/spells_impact/block/iunior

tag @s remove hexenwerk.spell.caster