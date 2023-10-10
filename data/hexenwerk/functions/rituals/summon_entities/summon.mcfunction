summon interaction ~ ~1 ~3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~ ~1 ~-3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~-3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~-2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 
summon interaction ~-2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_interaction"]} 

summon item_display ~ ~1 ~3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300} 
summon item_display ~ ~1 ~-3 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}
summon item_display ~3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}
summon item_display ~-3 ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}
summon item_display ~2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}
summon item_display ~-2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}
summon item_display ~2 ~1 ~-2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}
summon item_display ~-2 ~1 ~2 {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_item_display"],teleport_duration:300}

summon marker ~ ~1 ~ {Tags:["hexenwerk.ritual_entity.needs_init","hexenwerk.ritual_marker"]}

execute as @e[type=#hexenwerk:ritual_entity,tag=hexenwerk.ritual_entity.needs_init] run function hexenwerk:rituals/summon_entities/init