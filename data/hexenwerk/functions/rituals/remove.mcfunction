say /!\ THIS IS NO LONGER A RITUAL!!!!!!
execute store result storage hexenwerk ritual_id int 1 run scoreboard players get @s hexenwerk.ritual_id
function hexenwerk:rituals/entity_cleanup with storage hexenwerk
tag @s remove hexenwerk.ritual_base_block