tag @s add hexenwerk.this
execute as @a if score @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id = @s hexenwerk.id run tag @s add hexenwerk.event_owner
execute unless block ~ ~-1 ~ #hexenwerk:unmovable if block ~ ~ ~ #hexenwerk:air run function hexenwerk:spell_events/while/terrae_motus/waves/just_to_compact
tag @s remove hexenwerk.this

tag @a remove hexenwerk.event_owner

