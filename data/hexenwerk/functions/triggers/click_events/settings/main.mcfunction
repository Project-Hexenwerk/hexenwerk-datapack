execute if score @s hexenwerk.settings_action matches 5231 run tag @s add hexenwerk.mute_spell_uses
execute if score @s hexenwerk.settings_action matches 5232 run tag @s remove hexenwerk.mute_spell_uses

execute if score @s hexenwerk.settings_action matches 5233 run tag @s add hexenwerk.hide_spell_particles
execute if score @s hexenwerk.settings_action matches 5234 run tag @s remove hexenwerk.hide_spell_particles

execute if score @s hexenwerk.settings_action matches 5235 run tag @s add hexenwerk.mute_spell_sounds
execute if score @s hexenwerk.settings_action matches 5236 run tag @s remove hexenwerk.mute_spell_sounds

scoreboard players set @s hexenwerk.settings_action 0
trigger hexenwerk.settings
