execute if predicate hexenwerk:percent/20 run particle soul_fire_flame ^ ^ ^-0.1 0 0 0 0 1 force @a[tag=!hexenwerk.hide_spell_particles]
execute if entity @e[type=item_display,distance=..0.5,tag=hexenwerk.spell_ray_marker,nbt=!{item:{tag:{spell_data:{id:"protego"}}}}] run function hexenwerk:wand/spells/protego/block_spell
