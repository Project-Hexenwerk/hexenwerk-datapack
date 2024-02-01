item modify entity @s weapon.mainhand hexenwerk:dev_stone/to_deactivated
tellraw @s ["",{"text":"Disabled ","color":"dark_aqua"},{"text":"Dev Stone","color":"gray"},{"text":"!","color":"dark_aqua"}]
tag @s remove hexenwerk.debug
tag @s add hexenwerk.dev_stone.just_switched
