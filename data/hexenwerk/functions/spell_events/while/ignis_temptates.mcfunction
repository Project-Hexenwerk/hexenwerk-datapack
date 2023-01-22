tp @s ~ ~ ~ ~5 ~

execute positioned ~ ~0.5 ~ run particle flame ^ ^ ^2 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle flame ^ ^ ^-2 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle flame ^2 ^ ^ 0 0 0 0 1
execute positioned ~ ~0.5 ~ run particle flame ^-2 ^ ^ 0 0 0 0 1

execute if predicate hexenwerk:20_percent positioned ~ ~0.5 ~ run particle flame ^ ^ ^1 0 0 0 0 1
execute if predicate hexenwerk:20_percent positioned ~ ~0.5 ~ run particle flame ^ ^ ^-1 0 0 0 0 1
execute if predicate hexenwerk:20_percent positioned ~ ~0.5 ~ run particle flame ^1 ^ ^ 0 0 0 0 1
execute if predicate hexenwerk:20_percent positioned ~ ~0.5 ~ run particle flame ^-1 ^ ^ 0 0 0 0 1