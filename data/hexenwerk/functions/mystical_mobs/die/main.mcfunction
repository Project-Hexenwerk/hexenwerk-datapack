particle flash ~ ~0.5 ~
particle witch ~ ~1.5 ~ 0 9 0 1 100 
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 1.5
loot spawn ~ ~-0.5 ~ loot hexenwerk:entities/mystical_mob
data merge entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{hexenwerk-make_me_glow_uwu:1b}}}] {Glowing:1b,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Item:{tag:{hexenerk-make_me_glow_uwu:0b}}}
kill @s