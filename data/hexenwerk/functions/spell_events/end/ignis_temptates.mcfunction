tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"|-> ","color":"red"},{"text":"running \"end\" spell event event after 30 ticks","color":"red"}]
particle flame ~ ~1 ~ 0.1 2 0.1 0.75 2000
particle explosion ~ ~1 ~ 0.1 2 0.1 0.75 5

execute as @e[type=#hexenwerk:mob,type=!player,distance=..10] run data merge entity @s {Fire:250s}
execute as @e[type=#hexenwerk:mob,type=!#hexenwerk:undead,distance=..10] run effect give @s instant_damage 1 1 true
execute as @e[type=#hexenwerk:mob,type=#hexenwerk:undead,distance=..10] run effect give @s instant_health 1 1 true

summon marker ~ ~ ~ {Tags:[hexenwerk.spell_event_helper]}

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] ~ ~ ~

spreadplayers ~ ~ 5 5 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5] ~ ~ ~

kill @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..5]

fill ~ ~ ~ ~ ~ ~ fire replace light[level=5]

particle explosion ~ ~ ~ 0 2 0 1 5

kill @s
