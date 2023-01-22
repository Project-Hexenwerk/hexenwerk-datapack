tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"|-> ","color":"red"},{"text":"running \"end\" spell event event after 30 ticks","color":"red"}]
particle flame ~ ~1 ~ 0.1 2 0.1 0.75 2000
particle explosion ~ ~1 ~ 0.1 2 0.1 0.75 5

execute as @e[type=#hexenwerk:mob,type=!player,distance=..10] if predicate hexenwerk:75_percent run data merge entity @s {Fire:250s}
execute as @e[type=#hexenwerk:mob,type=!#hexenwerk:undead,distance=..10] run effect give @s instant_damage 1 1 true
execute as @e[type=#hexenwerk:mob,type=#hexenwerk:undead,distance=..10] run effect give @s instant_health 1 1 true

summon marker ~ ~ ~ {Tags:[hexenwerk.spell_event_helper]}


spreadplayers ~ ~ 10 10 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] ~ ~ ~

spreadplayers ~ ~ 10 10 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] ~ ~ ~

spreadplayers ~ ~ 10 10 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] ~ ~ ~

spreadplayers ~ ~ 10 10 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] ~ ~ ~

spreadplayers ~ ~ 10 10 false @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..1]
execute at @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] run setblock ~ ~ ~ fire keep
tp @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10] ~ ~ ~

kill @e[type=marker,tag=hexenwerk.spell_event_helper,sort=nearest,limit=1,distance=..10]

fill ~ ~ ~ ~ ~ ~ air replace light[level=5]

kill @s
