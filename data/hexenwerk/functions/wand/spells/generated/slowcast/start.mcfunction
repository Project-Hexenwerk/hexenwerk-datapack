tag @s add hexenwerk.caster
summon item_display ~ ~ ~ {Tags:["hexenwerk.spell_ray_marker","hexenwerk.init"]}
execute as @e[type=item_display,tag=hexenwerk.init,limit=1] run function hexenwerk:wand/spells/generated/slowcast/init
tag @s remove hexenwerk.caster
