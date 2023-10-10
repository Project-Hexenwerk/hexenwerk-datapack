item replace entity @s container.0 with air
say @a[tag=hexenwerk.this]
$tellraw @a[tag=hexenwerk.this] {"text":"$(id)"}
$execute as @a[tag=hexenwerk.this,limit=1,sort=nearest] run item replace entity @s[type=player,tag=hexenwerk.this] weapon.mainhand with $(id)
$execute as @a[tag=hexenwerk.this,limit=1,sort=nearest] if predicate hexenwerk:holding/something run give @s $(id)
