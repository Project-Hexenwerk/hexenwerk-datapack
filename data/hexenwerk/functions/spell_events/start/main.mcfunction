tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"running \"start\" spell event event","color":"red"}]
execute if score @s hexenwerk.spell_event_id matches 1007 run function hexenwerk:spell_events/start/ignis_temptates

