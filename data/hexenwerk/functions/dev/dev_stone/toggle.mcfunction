execute if entity @s[tag=!hexenwerk.dev_stone.just_switched] if predicate hexenwerk:holding/dev_stone_deactivated run function hexenwerk:dev/dev_stone/switch/debug
execute if entity @s[tag=!hexenwerk.dev_stone.just_switched] if predicate hexenwerk:holding/dev_stone_debug run function hexenwerk:dev/dev_stone/switch/dev
execute if entity @s[tag=!hexenwerk.dev_stone.just_switched] if predicate hexenwerk:holding/dev_stone_dev run function hexenwerk:dev/dev_stone/switch/disabled
tag @s remove hexenwerk.dev_stone.just_switched