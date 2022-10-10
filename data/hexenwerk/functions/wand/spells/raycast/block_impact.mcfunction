tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> raycast hit block ","color":"red"}]
execute if score @s hexenwerk.spell_id matches 1001 run function hexenwerk:wand/spells/raycast/spells_impact/block/ardo
execute if score @s hexenwerk.spell_id matches 1002 run function hexenwerk:wand/spells/raycast/spells_impact/block/wingardium_leviosa
tag @s remove hexenwerk.spell.caster