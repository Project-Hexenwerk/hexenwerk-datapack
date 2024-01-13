summon marker ~ ~ ~ {Tags:["hexenwerk.flower_location"]}
spreadplayers ~ ~ 1 1 true @e[type=marker,tag=hexenwerk.flower_location]
execute as @e[type=marker,tag=hexenwerk.flower_location,limit=1] at @s unless block ~ ~-1 ~ structure_void unless block ~ ~-1 ~ #slabs unless block ~ ~-1 ~ obsidian run function hexenwerk:blocks/comet/spawn_flower
scoreboard players add %max_recursions hexenwerk.temp 1
execute as @e[type=marker,tag=hexenwerk.flower_location,limit=1] if score %max_recursions hexenwerk.temp matches ..2 at @s if block ~ ~-1 ~ structure_void run function hexenwerk:blocks/comet/flower_location
