execute store result score %count hexenwerk.temp run data get entity @s SelectedItem.Count
scoreboard players add %count hexenwerk.temp 2
item modify entity @s weapon.mainhand hexenwerk:add
execute unless predicate hexenwerk:holding/unstackable