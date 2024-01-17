tag @s add hexenwerk.spell_event
tag @s add smithed.strict
scoreboard players add spell_event_max hexenwerk.id_2 1
scoreboard players operation @s hexenwerk.id = @p[tag=hexenwerk.spell.caster] hexenwerk.id
scoreboard players operation @s hexenwerk.id_2 = spell_event_max hexenwerk.id_2
scoreboard players set @s hexenwerk.spell_event_id 1007