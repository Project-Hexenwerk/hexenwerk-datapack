execute positioned ~0 ~0 ~0 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/inner

execute positioned ~0 ~0 ~-1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~0 ~0 ~1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~-1 ~0 ~-1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~-1 ~0 ~0 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~-1 ~0 ~1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~1 ~0 ~1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~1 ~0 ~-1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid
execute positioned ~1 ~0 ~0 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/mid

execute positioned ~-2 ~0 ~-2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~-2 ~0 ~-1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~-2 ~0 ~0 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~-2 ~0 ~1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~-2 ~0 ~2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~-1 ~0 ~-2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~-1 ~0 ~2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~0 ~0 ~-2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~0 ~0 ~2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~1 ~0 ~-2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~1 ~0 ~2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~2 ~0 ~-2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~2 ~0 ~-1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~2 ~0 ~0 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~2 ~0 ~1 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
execute positioned ~2 ~0 ~2 align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:spell_events/start/display_entities/consedo/outer
 
scoreboard players operation @e[type=block_display,tag=hexenwerk.new] hexenwerk.id = @s hexenwerk.id
tag @e[type=block_display,tag=hexenwerk.new] remove hexenwerk.new
particle explosion ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
