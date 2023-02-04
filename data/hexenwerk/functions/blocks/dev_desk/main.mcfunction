execute unless data block ~ ~ ~ Items[{Slot:17b,tag:{hexenwerk-clear:1b}}] run function hexenwerk:blocks/dev_desk/home

execute unless entity @s[scores={hexenwerk.gui.page=1..3}] run function hexenwerk:blocks/dev_desk/home/main

execute if entity @s[scores={hexenwerk.gui.page=1}] run function hexenwerk:blocks/dev_desk/items/main
execute if entity @s[scores={hexenwerk.gui.page=2}] run function hexenwerk:blocks/dev_desk/blocks/main
execute if entity @s[scores={hexenwerk.gui.page=3}] run function hexenwerk:blocks/dev_desk/spells/main