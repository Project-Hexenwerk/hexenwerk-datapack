tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> raycast hit block ","color":"red"}]
scoreboard players operation .current hexenwerk.spell_id = @s hexenwerk.spell_id
execute align xz positioned ~.5 ~ ~.5 run function hexenwerk:wand/spells/raycast/block_impact_run

tag @s remove hexenwerk.spell.caster