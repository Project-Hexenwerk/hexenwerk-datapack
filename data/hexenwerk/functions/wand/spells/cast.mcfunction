execute unless entity @s[gamemode=creative] run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> substracted ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.mana_cost"},"color":"gold"},{"text":" from current mana ","color":"red"}]
execute unless entity @s[gamemode=creative] unless entity @s[tag=hexenwerk.ignore_mana_cost] run scoreboard players operation @s hexenwerk.mana_current -= @s hexenwerk.mana_cost

execute if score @s hexenwerk.spell_id matches 0 run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> not running anything","color":"red"}]
execute if score @s hexenwerk.spell_id matches 1..999 run function hexenwerk:wand/spells/no_raycast/main
execute if score @s hexenwerk.spell_id matches 1000.. anchored eyes positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/main
