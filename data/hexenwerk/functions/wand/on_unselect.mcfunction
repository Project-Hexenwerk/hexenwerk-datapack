scoreboard players set @s hexenwerk.holding_wand_timer 0
scoreboard players set @s hexenwerk.mana_regen 0
scoreboard players operation @s hexenwerk.mana_max -= @s hexenwerk.mana_modifier_weapon
tag @s remove hexenwerk.attuned_mana_regen
title @s subtitle ""
