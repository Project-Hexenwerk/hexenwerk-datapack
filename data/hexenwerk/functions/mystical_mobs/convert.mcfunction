tag @s add hexenwerk.mystical_mob
summon marker ~ ~ ~ {Tags:["hexenwerk.mystical_mobs.marker","hexenwerk.mystical_mobs.marker.equip_me_plz"]}
ride @e[type=marker,tag=hexenwerk.mystical_mobs.marker.equip_me_plz,sort=nearest,limit=1] mount @s
tag @e[type=marker,sort=nearest,limit=1] remove hexenwerk.mystical_mobs.marker.equip_me_plz