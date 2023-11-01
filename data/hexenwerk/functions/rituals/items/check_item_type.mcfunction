$execute if predicate hexenwerk:holding/2d_item run data merge entity @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,scores={hexenwerk.ritual_id=$(ritual_id)},limit=1] {item_display:"ground"}
$execute unless predicate hexenwerk:holding/2d_item run data merge entity @e[type=item_display,sort=nearest,scores={hexenwerk.ritual_id=$(ritual_id)},tag=hexenwerk.ritual_item_display,limit=1] {item_display:"firstperson_righthand"}
execute store result score %count hexenwerk.temp run data get entity @s SelectedItem.Count
scoreboard players remove %count hexenwerk.temp 1
execute as @a[tag=!hexenwerk.returned_item] run say a
item modify entity @s[tag=!hexenwerk.returned_item] weapon.mainhand hexenwerk:subtract_one
tag @s remove hexenwerk.returned_item
say owomaltine