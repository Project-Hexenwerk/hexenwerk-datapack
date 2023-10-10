tag @s add hexenwerk.this
execute as @e[type=interaction,tag=hexenwerk.ritual_interaction] if data entity @s interaction.player at @s run function hexenwerk:rituals/items/replace_2

tag @s add hexenwerk.this
advancement revoke @s only hexenwerk:other/click_interaction_ritual