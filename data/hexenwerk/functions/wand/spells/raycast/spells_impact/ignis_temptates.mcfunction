tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing impact event for spell ","color":"red"},{"text":"ignis temptates ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1006","color":"gold"},{"text":")","color":"red"}]

execute align xz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["hexenwerk.spell_event"]}
scoreboard players operation @e[type=marker,tag=hexenwerk.spell_event,distance=..1,sort=nearest,limit=1] hexenwerk.id = @s hexenwerk.id
scoreboard players set @e[type=marker,tag=hexenwerk.spell_event,distance=..1,sort=nearest,limit=1] hexenwerk.spell_event_id 1007