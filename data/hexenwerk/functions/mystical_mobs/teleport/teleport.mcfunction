$execute unless entity @e[tag=hexenwerk.mystical_mob.initialised,sort=nearest,limit=1,scores={hexenwerk.mystical_mob.id=$(id)}] run kill @s
$tp @s @e[tag=hexenwerk.mystical_mob.initialised,sort=nearest,limit=1,scores={hexenwerk.mystical_mob.id=$(id)}]
particle minecraft:explosion ~ ~ ~