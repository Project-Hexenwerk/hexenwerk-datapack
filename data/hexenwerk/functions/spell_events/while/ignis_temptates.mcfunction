tp @s ~ ~ ~ ~7 ~

execute positioned ^ ^ ^1.5 run particle flame ~ ~0.5 ~ ^ ^ ^-1000000 0.0000001 0 force @a[tag=!hexenwerk.hide_spell_particles]
execute positioned ^ ^ ^-1.5 run particle flame ~ ~0.5 ~ ^ ^ ^1000000 0.0000001 0 force @a[tag=!hexenwerk.hide_spell_particles]
execute positioned ^1.5 ^ ^ rotated ~270 ~ run particle flame ~ ~0.5 ~ ^ ^ ^-1000000 0.0000001 0 force @a[tag=!hexenwerk.hide_spell_particles] 
execute positioned ^-1.5 ^ ^ rotated ~270 ~ run particle flame ~ ~0.5 ~ ^ ^ ^1000000 0.0000001 0 force @a[tag=!hexenwerk.hide_spell_particles]

execute positioned ^ ^ ^-1.5 run particle flame ~ ~0.5 ~ 0 0 0 0 1 force @a[tag=!hexenwerk.hide_spell_particles]
execute positioned ^ ^ ^1.5 run particle flame ~ ~0.5 ~ 0 0 0 0 1 force @a[tag=!hexenwerk.hide_spell_particles]
execute positioned ^-1.5 ^ ^ run particle flame ~ ~0.5 ~ 0 0 0 0 1 force @a[tag=!hexenwerk.hide_spell_particles]
execute positioned ^1.5 ^ ^ run particle flame ~ ~0.5 ~ 0 0 0 0 1 force @a[tag=!hexenwerk.hide_spell_particles]

# particle flame ~ ~ ~ ^ ^ ^100000000 0.00000001 0 force @a[tag=!hexenwerk.hide_spell_particles]
