data remove entity @s interaction
execute store result storage hexenwerk ritual_id int 1 run scoreboard players get @a[tag=hexenwerk.this,limit=1,sort=nearest] hexenwerk.ritual_id
function hexenwerk:rituals/items/actually_replace with storage hexenwerk
