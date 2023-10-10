$tag @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,scores={hexenwerk.ritual_id=$(ritual_id)},limit=1] add hexenwerk.that
execute as @e[type=item_display,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,sort=nearest,limit=1] unless data entity @s {item:{id:"minecraft:air"}} run function hexenwerk:rituals/items/return_item with entity @s item
execute if entity @a[tag=hexenwerk.this,predicate=!hexenwerk:holding/something,limit=1,sort=nearest] run data merge entity @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,limit=1] {shadow_radius:0f}
item replace entity @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,limit=1] container.0 from entity @p[predicate=hexenwerk:holding/something,tag=hexenwerk.this] weapon.mainhand
tag @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,limit=1] remove hexenwerk.that
