
tp @s ~ ~ ~ ~7 ~

# had to duplicate since i cant modify count for some reason
execute positioned ^ ^ ^0.75 rotated 90 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^ ^ ^-0.75 rotated 270 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^-0.75 ^ ^ rotated 180 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000050 0 force
execute positioned ^0.75 ^ ^ rotated 0 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^ ^ ^0.75 rotated 90 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^ ^ ^-0.75 rotated 270 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^-0.75 ^ ^ rotated 180 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^0.75 ^ ^ rotated 0 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^ ^ ^0.75 rotated 90 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^ ^ ^-0.75 rotated 270 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^-0.75 ^ ^ rotated 180 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force
execute positioned ^0.75 ^ ^ rotated 0 0 run particle minecraft:portal ~ ~0.1 ~ ^ ^ ^-1000000 0.0000005 0 force

tag @s add hexenwerk.this
execute as @a at @s unless entity @e[type=marker,tag=hexenwerk.commovus_motus,distance=..1] run tag @s remove hexenwerk.teleported
execute if entity @s[type=marker,tag=hexenwerk.commovus_motus_start] run execute as @e[type=marker,tag=hexenwerk.commovus_motus_end] if score @s hexenwerk.id_2 = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id_2 run tag @s add hexenwerk.linked
execute if entity @s[type=marker,tag=hexenwerk.commovus_motus_end] run execute as @e[type=marker,tag=hexenwerk.commovus_motus_start] if score @s hexenwerk.id_2 = @e[type=marker,tag=hexenwerk.this,limit=1] hexenwerk.id_2 run tag @s add hexenwerk.linked
execute unless entity @e[type=marker,tag=hexenwerk.linked] run function hexenwerk:spell_events/while/commovus_motus/epic_fail_lol_xd_rofl
execute positioned ~ ~1 ~ as @e[type=#hexenwerk:mobpulsplus,tag=!hexenwerk.teleported,distance=..1,sort=nearest,limit=1] run function hexenwerk:spell_events/while/commovus_motus/teleport
tag @s remove hexenwerk.this
tag @e remove hexenwerk.linked
