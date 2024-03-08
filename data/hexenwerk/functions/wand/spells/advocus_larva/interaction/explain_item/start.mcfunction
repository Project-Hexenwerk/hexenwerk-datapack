execute store result storage hexenwerk:temp id int 1 run scoreboard players get @s hexenwerk.id
execute if entity @s[tag=hexenwerk.dont_move] run function hexenwerk:wand/spells/advocus_larva/interaction/explain_item/remove_tag with storage hexenwerk:temp
execute if data entity @s SelectedItem.tag.hexenwerk-id unless entity @s[tag=hexenwerk.dont_move] unless entity @s[tag=hexenwerk.removed_tag] run function hexenwerk:wand/spells/advocus_larva/interaction/explain_item/add_tag with storage hexenwerk:temp
tag @s remove hexenwerk.removed_tag