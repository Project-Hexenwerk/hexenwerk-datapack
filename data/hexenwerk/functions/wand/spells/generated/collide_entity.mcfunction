$execute if data storage hexenwerk:temp wand_data.events.on_entity_collision.as_target as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] run $(as_target)
$execute if data storage hexenwerk:temp wand_data.events.on_entity_collision.as_player run $(as_player)