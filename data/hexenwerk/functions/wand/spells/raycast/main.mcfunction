tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"starting raycast","color":"red"}]

tag @s add hexenwerk.spell.caster
scoreboard players set #raycast.traveled hexenwerk.temp 0

playsound minecraft:entity.shulker_bullet.hit voice @a ~ ~ ~ 0.5 1.5
playsound minecraft:entity.bat.takeoff voice @a ~ ~ ~ 0.6 2
function hexenwerk:wand/spells/raycast/raycast
tag @s remove hexenwerk.spell.caster