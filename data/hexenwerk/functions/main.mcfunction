execute as @a[predicate=hexenwerk:is_holding_wand] at @s run function hexenwerk:wand/main
scoreboard players set @a[scores={hexenwerk.used_wfoas=1..}] hexenwerk.used_wfoas 0