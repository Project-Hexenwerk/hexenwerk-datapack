tellraw @a[tag=hexenwerk.debug] ["",{"text":"\n[DEBUG] ","color":"dark_red"},{"selector":"@s ","color":"light_purple"},{"text":" -> died","color":"red"},{"text":"\n[DEBUG] ","color":"dark_red"},{"text":"-> setting current mana to max mana","color":"red"}]

scoreboard players operation @s hexenwerk.mana_current = @s hexenwerk.mana_max
scoreboard players set @s hexenwerk.deaths 0