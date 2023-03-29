tag @s add hexenwerk.spell_event
scoreboard players add spell_event_max hexenwerk.id_2 1
scoreboard players operation @e[type=marker,tag=hexenwerk.spell_event,distance=..1,sort=nearest,limit=1] hexenwerk.id = @p[tag=hexenwerk.caster] hexenwerk.id
scoreboard players operation @s hexenwerk.id_2 = spell_event_max hexenwerk.id_2
scoreboard players set @s hexenwerk.spell_event_id 1009
