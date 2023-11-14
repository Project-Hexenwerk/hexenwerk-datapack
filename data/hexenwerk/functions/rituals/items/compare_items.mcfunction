data modify storage hexenwerk:temp copy_display.item.tag set from storage hexenwerk item.tag
data modify storage hexenwerk:temp copy_display.item.id set from storage hexenwerk item.id

data merge storage hexenwerk:temp {copy_player:{item:{tag:{none:1b}}}}
data modify storage hexenwerk:temp copy_player.item.tag set from entity @s SelectedItem.tag
data modify storage hexenwerk:temp copy_player.item.id set from entity @s SelectedItem.id

scoreboard players set %escape_function hexenwerk.temp 1
execute store result score %escape_function hexenwerk.temp run data modify storage hexenwerk:temp copy_display.item set from storage hexenwerk:temp copy_player.item
execute if score %escape_function hexenwerk.temp matches 0 run say escaped
