tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s ","color":"light_purple"},{"text":" -> crafting magical crystal","color":"red"}]
recipe take @s hexenwerk:magical_crystal
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":" -> removing recipe","color":"red"}]
advancement revoke @s only hexenwerk:craft/magical_crystal
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":" -> revoking advancement","color":"red"}]
loot give @s loot hexenwerk:items/magical_crystal
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":" -> giving item from loot table","color":"red"}]
clear @s knowledge_book 
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":" -> clearing knowledge books","color":"red"}]
