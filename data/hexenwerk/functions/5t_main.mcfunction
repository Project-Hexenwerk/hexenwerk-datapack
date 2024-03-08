# TP advocus larva
execute as @e[type=item_display,tag=hexenwerk.explaining_spirit,tag=!hexenwerk.dont_move] at @s run function hexenwerk:wand/spells/advocus_larva/tp
execute as @e[type=interaction,tag=hexenwerk.explaining_spirit_interaction,tag=!hexenwerk.dont_move] at @s run function hexenwerk:wand/spells/advocus_larva/tp

schedule function hexenwerk:5t_main 5t