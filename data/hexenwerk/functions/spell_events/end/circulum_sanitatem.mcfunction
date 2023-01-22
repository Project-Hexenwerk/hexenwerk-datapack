tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"|-> ","color":"red"},{"text":"running \"end\" spell event event after 200 ticks","color":"red"}]
execute positioned ~ ~0.5 ~ run particle composter ^ ^ ^3 0.2 0 0.2 0 10
execute positioned ~ ~0.5 ~ run particle composter ^ ^ ^-3 0.2 0 0.2 0 10
execute positioned ~ ~0.5 ~ run particle composter ^3 ^ ^ 0.2 0 0.2 0 10
execute positioned ~ ~0.5 ~ run particle composter ^-3 ^ ^ 0.2 0 0.2 0 10
kill @s