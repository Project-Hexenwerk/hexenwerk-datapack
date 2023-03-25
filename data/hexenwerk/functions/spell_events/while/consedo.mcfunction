tag @s add hexenwerk.this 
execute as @e[type=block_display, tag=hexenwerk.spell_event_display] at @s run effect give @e[distance=...5] slowness 1 2 true
execute if score @s hexenwerk.spell_event_timer matches 71.. as @e[type=block_display, tag=hexenwerk.spell_event_display_outer] if score @s hexenwerk.id = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id run kill @s
execute if score @s hexenwerk.spell_event_timer matches 75.. as @e[type=block_display, tag=hexenwerk.spell_event_display_mid] if score @s hexenwerk.id = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id run kill @s
execute if score @s hexenwerk.spell_event_timer matches 79.. as @e[type=block_display, tag=hexenwerk.spell_event_display_inner] if score @s hexenwerk.id = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id run kill @s
tag @s remove hexenwerk.this 

