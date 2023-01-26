execute if entity @s[scores={hexenwerk.spell_event_timer=1}] run function hexenwerk:spell_events/start/main
execute if entity @s[scores={hexenwerk.spell_event_timer=2..}] run function hexenwerk:spell_events/while/main
execute if entity @s[scores={hexenwerk.spell_event_timer=30..,hexenwerk.spell_event_id=1007}] run function hexenwerk:spell_events/end/ignis_temptates
execute if entity @s[scores={hexenwerk.spell_event_timer=50..,hexenwerk.spell_event_id=1008}] run function hexenwerk:spell_events/end/terrae_motus
execute if entity @s[scores={hexenwerk.spell_event_timer=200..,hexenwerk.spell_event_id=4}] run function hexenwerk:spell_events/end/circulum_sanitatem
scoreboard players add @s hexenwerk.spell_event_timer 1
