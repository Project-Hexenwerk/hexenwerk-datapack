tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"starting raycast","color":"red"}]

tag @s add hexenwerk.spell.caster
function hexenwerk:wand/spells/raycast/raycast
tag @s remove hexenwerk.spell.caster