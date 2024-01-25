particle minecraft:soul_fire_flame ~ ~ ~
execute if entity @e[type=marker,distance=..0.5,tag=hexenwerk.spell_ray_marker,nbt=!{data:{spell_data:{id:"protego"}}}] run function hexenwerk:wand/spells/protego/block_spell
