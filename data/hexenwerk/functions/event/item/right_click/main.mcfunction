scoreboard players set @s hexenwerk.used_wfoas 0
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},{"selector":"@s","color":"yellow"}," triggered ",{"text":"item","color":"yellow"},{"text":"/","color":"gold"},{"text":"right_click","color":"yellow"}]
execute if predicate hexenwerk:is_holding/item/wand at @s run function hexenwerk:item/wand/click
