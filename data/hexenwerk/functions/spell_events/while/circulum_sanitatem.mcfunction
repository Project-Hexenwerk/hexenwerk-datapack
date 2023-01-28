tp @s ~ ~ ~ ~5 ~

execute positioned ~ ~0.5 ~ run particle composter ^ ^ ^3 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle composter ^ ^ ^-3 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle composter ^3 ^ ^ 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle composter ^-3 ^ ^ 0 0 0 0 1

effect give @a[distance=..3,predicate=!hexenwerk:flags/has_regen] regeneration 2 1 true
