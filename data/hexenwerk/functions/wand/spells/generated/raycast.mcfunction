scoreboard players add #raycast.traveled hexenwerk.temp 1

execute if entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] unless data storage hexenwerk:temp {wand_data:{events:{on_entity_collision:{as_target:""}}}} run function hexenwerk:wand/spells/generated/events/collide_entity_entity with storage hexenwerk:temp wand_data.events.on_entity_collision 
execute if entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] unless data storage hexenwerk:temp {wand_data:{events:{on_entity_collision:{as_player:""}}}} run function hexenwerk:wand/spells/generated/events/collide_entity_player with storage hexenwerk:temp wand_data.events.on_entity_collision 

execute unless data storage hexenwerk:temp {wand_data:{events:{on_block_collision:""}}} unless block ~ ~ ~ #hexenwerk:transparent run function hexenwerk:wand/spells/generated/events/collide_block with storage hexenwerk:temp wand_data.events

execute unless data storage hexenwerk:temp {wand_data:{events:{on_raycast_travel:""}}} run function hexenwerk:wand/spells/generated/events/raycast_travel with storage hexenwerk:temp wand_data.events

execute positioned ^ ^ ^0.1 if entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] run tellraw @s {"text":"Your spell was blocked since it entered a protected area!","color": "red"}
execute positioned ^ ^ ^0.1 if entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4] run particle crit ~ ~ ~ .1 .1 .1 1 10

execute unless score #raycast.traveled hexenwerk.temp >= @s hexenwerk.temp if block ~ ~ ~ #hexenwerk:transparent unless entity @e[type=marker,tag=hexenwerk.spell_blocker,distance=..4.1] unless entity @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/generated/raycast with storage hexenwerk:temp wand_data.events