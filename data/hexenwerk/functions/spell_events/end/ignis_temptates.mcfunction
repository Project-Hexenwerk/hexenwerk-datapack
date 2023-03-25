 
particle flame ~ ~1 ~ 0.1 2 0.1 0.75 2000
particle explosion ~ ~1 ~ 0.1 2 0.1 0.75 5

execute as @e[type=#hexenwerk:mob,type=!player,distance=..10] run data merge entity @s {Fire:250s}
execute as @a if score @s hexenwerk.id = @e[type=marker,tag=hexenwerk.spell_event,distance=..1,sort=nearest,limit=1] hexenwerk.id run tag @s add hexenwerk.event_owner
execute as @e[distance=..5] run damage @s 15 hexenwerk:ignis_temptates by @a[tag=hexenwerk.event_owner,limit=1]
tag @a remove hexenwerk.event_owner

summon marker ~ ~ ~ {Tags:[hexenwerk.spell_event_helper]}

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1] ~ ~ ~

kill @e[type=marker,tag=hexenwerk.spell_event_helper,limit=1]

fill ~ ~ ~ ~ ~ ~ fire replace light[level=5]

particle explosion ~ ~ ~ 0 2 0 1 5

kill @s

