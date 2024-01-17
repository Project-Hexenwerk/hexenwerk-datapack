
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 5 force @a[tag=!hexenwerk.hide_spell_particles]
data merge entity @s {Age:-2147483647}
data merge entity @s {IsBaby:1b}
data merge entity @s {Size:0}

execute if data entity @s {IsBaby:1b} run tp @s ~ ~0.5 ~
execute if data entity @s {Size:0} run tp @s ~ ~0.5 ~
