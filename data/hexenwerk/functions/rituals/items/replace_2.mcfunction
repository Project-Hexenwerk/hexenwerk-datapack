data remove entity @s interaction
execute store result storage hexenwerk ritual_id int 1 run scoreboard players get @s hexenwerk.ritual_id
function hexenwerk:rituals/items/actually_replace with storage hexenwerk
execute as @a[tag=hexenwerk.this,predicate=hexenwerk:holding/something,limit=1,sort=nearest] run function hexenwerk:rituals/items/check_item_type with storage hexenwerk
