item modify entity @s weapon.mainhand hexenwerk:dev_stone/to_debug
tellraw @s ["",{"text":"Enabled ","color":"dark_aqua"},{"text":"Debug ","color":"dark_red"},{"text":"mode!","color":"dark_aqua"}]
tag @s add hexenwerk.debug
tag @s add hexenwerk.dev_stone.just_switched