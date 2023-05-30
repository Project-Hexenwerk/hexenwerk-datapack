 execute align xz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["hexenwerk.spell_event","smithed.strict"]}
scoreboard players operation @e[type=marker,tag=hexenwerk.spell_event,distance=..1,sort=nearest,limit=1] hexenwerk.id = @s hexenwerk.id
scoreboard players set @e[type=marker,tag=hexenwerk.spell_event,distance=..1,sort=nearest,limit=1] hexenwerk.spell_event_id 1007