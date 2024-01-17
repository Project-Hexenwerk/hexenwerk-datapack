scoreboard players set @s hexenwerk.holding_wand_timer 0
scoreboard players set @s hexenwerk.mana_regen 0
scoreboard players set @s hexenwerk.mana_modifier_weapon 0
tag @s remove hexenwerk.attuned_mana_regen
tag @s remove hexenwerk.attuned_maximum
scoreboard players operation @s hexenwerk.mana_max -= @s hexenwerk.mana_modifier_weapon
title @s subtitle ""
tag @s remove hexenwerk.holding_wand

scoreboard players set @s hexenwerk.holding_wand_timer 0