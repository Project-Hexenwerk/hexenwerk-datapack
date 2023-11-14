$tag @e[type=item_display,tag=hexenwerk.ritual_item_display,scores={hexenwerk.ritual_id=$(ritual_id)}] add hexenwerk.that
execute as @e[type=item_display,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,sort=nearest,limit=1] unless data entity @s item.tag run data merge entity @s {item:{tag:{hexenwerk.dummmy_tag:1b}}}
execute as @e[type=item_display,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,sort=nearest,limit=1] run data modify storage hexenwerk item set from entity @s item
item replace entity @e[type=item_display,tag=hexenwerk.that,limit=1,sort=nearest] container.0 from entity @a[tag=hexenwerk.this,sort=nearest,limit=1] weapon.mainhand
execute as @a[tag=hexenwerk.this,limit=1,sort=nearest] run function hexenwerk:rituals/items/check_item_type with storage hexenwerk
execute as @e[type=item_display,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,sort=nearest,limit=1] run function hexenwerk:rituals/items/return_item with storage hexenwerk item
execute as @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,limit=1] if data entity @s {item:{id:"minecraft:air"}} run data merge entity @s {shadow_radius:0f}
execute as @e[type=item_display,tag=hexenwerk.that,limit=1,sort=nearest] unless data entity @s {item:{id:"minecraft:air"}} run data merge entity @s {shadow_radius:.35f,shadow_strength:0.75f}
tag @e[type=item_display,sort=nearest,tag=hexenwerk.ritual_item_display,tag=hexenwerk.that,limit=1] remove hexenwerk.that