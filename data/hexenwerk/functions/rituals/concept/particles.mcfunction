particle flash ~ ~0.5 ~
particle witch ~ ~1.5 ~ 0 9 0 1 100 
playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 2 1.5
loot spawn ~ ~-0.5 ~ loot hexenwerk:items/attunement_shards/glowing_shard
data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{hexenwerk-make_me_glow_uwu:1b}}},nbt=!{Glowing:1b}] {Glowing:1b,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Item:{tag:{hexenerk-make_me_glow_uwu:0b}}}
