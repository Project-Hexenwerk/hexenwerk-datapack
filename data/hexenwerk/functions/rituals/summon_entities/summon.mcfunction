summon interaction ~ ~1 ~3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~ ~1 ~-3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~-3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~-2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 
summon interaction ~-2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"],height:0.1f} 

summon item_display ~ ~1 ~3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300} 
summon item_display ~ ~1 ~-3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}
summon item_display ~3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}
summon item_display ~-3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}
summon item_display ~2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}
summon item_display ~-2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}
summon item_display ~2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}
summon item_display ~-2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.35f,0f],scale:[1f,1f,1f]},teleport_duration:300}

summon marker ~ ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_marker"]}

execute as @e[type=#hexenwerk:ritual_entity,tag=hexenwerk.ritual_entity.needs_init] run function hexenwerk:rituals/summon_entities/init