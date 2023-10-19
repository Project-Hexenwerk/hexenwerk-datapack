scoreboard players set %escape_function hexenwerk.temp 1
execute store result score %escape_function hexenwerk.temp run data modify storage hexenwerk:copy item set from entity @s SelectedItem
execute if score %escape_function hexenwerk.tempp matches 0 run say escaped