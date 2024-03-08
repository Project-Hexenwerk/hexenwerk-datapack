tag @s add hexenwerk.caster
tag @s remove hexenwerk.dont_add_tag_explaining_spirit
summon item_display ^-1.5 ^1.25 ^0.75 {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1705128837,-510501216,-1691052648,1721832433],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ5Yzc3YTJhNDk4NjEwMWQxYjFiYWYyNTQxNWVmNjIxNWY1ZjdmMjU0NjJjODBlZGM1YzMzNmI2NDg1MzNlNSJ9fX0="}]}}}},Tags:["hexenwerk.init","hexenwerk.explaining_spirit"],teleport_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
summon interaction ^-1.5 ^1.75 ^0.75 {width:1,height:1,Tags:["hexenwerk.init","hexenwerk.explaining_spirit_interaction"]}
execute as @e[type=item_display,tag=hexenwerk.init,sort=nearest,limit=1] run function hexenwerk:wand/spells/advocus_larva/init
execute as @e[type=interaction,tag=hexenwerk.init,sort=nearest,limit=1] run function hexenwerk:wand/spells/advocus_larva/init
tag @s remove hexenwerk.caster
execute as @s[tag=hexenwerk.explaining_spirit] run tag @s add hexenwerk.dont_add_tag_explaining_spirit
execute as @s[tag=!hexenwerk.explaining_spirit] run particle minecraft:dolphin ^-1.5 ^1.75 ^0.75 0.3 0.3 0.3 1 100
tag @s remove hexenwerk.explaining_spirit
tag @s[tag=!hexenwerk.dont_add_tag_explaining_spirit] add hexenwerk.explaining_spirit
execute if entity @s[tag=hexenwerk.dont_add_tag_explaining_spirit] run function hexenwerk:wand/spells/advocus_larva/kill
