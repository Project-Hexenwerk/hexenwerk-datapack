execute store result score %count hexenwerk.temp run data get entity @a[tag=hexenwerk.this,limit=1,sort=nearest] SelectedItem.Count
execute as @a[tag=hexenwerk.this,sort=nearest,limit=1] run function hexenwerk:rituals/items/compare_items
execute as @a[tag=hexenwerk.this,sort=nearest,limit=1] if score %escape_function hexenwerk.temp matches 0 run function hexenwerk:rituals/items/return_matching/main
execute if score %escape_function hexenwerk.temp matches 0 run return 0
say aysd
$execute as @a[tag=hexenwerk.this,limit=1,sort=nearest] if score %count hexenwerk.temp matches 0..1 run item replace entity @s weapon.mainhand with $(id)$(tag) 1
execute if score %count hexenwerk.temp matches 0..1 run tag @a[tag=hexenwerk.this,limit=1,sort=nearest] add hexenwerk.returned_item
$execute if score %count hexenwerk.temp matches 2.. run give @a[tag=hexenwerk.this,predicate=hexenwerk:holding/something,limit=1,sort=nearest] $(id)$(tag) 1
