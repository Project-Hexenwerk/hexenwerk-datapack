loot spawn ~ ~0.75 ~ loot hexenwerk:items/attunement_shards/random
execute positioned ~ ~0.75 ~ run data merge entity @e[type=item,distance=..0.5,limit=1,nbt={Item:{id:"minecraft:jigsaw"}}] {NoGravity:1b,Motion:[0,0,0],Tags:["hexenwerk.mystical_reward"],Glowing:1b}
summon marker ~ ~ ~ {Tags:["hexenwerk.mystical_mob.soul","smithed.strict"]}
scoreboard players remove #mysitcal_mob_count hexenwerk.temp 1
kill @s