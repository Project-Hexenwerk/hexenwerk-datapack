item modify entity @s weapon.mainhand hexenwerk:dev_stone/to_dev
tellraw @s ["",{"text":"Enabled ","color":"dark_aqua"},{"text":"Dev ","color":"aqua"},{"text":"mode!","color":"dark_aqua"}]
title @s actionbar ""
tag @s remove hexenwerk.debug
tag @s add hexenwerk.dev
tag @s add hexenwerk.dev_stone.just_switched