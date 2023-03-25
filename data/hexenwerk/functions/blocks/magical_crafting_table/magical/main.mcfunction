execute if data block ~ ~ ~ Items[{Slot: 15b}] unless data block ~ ~ ~ Items[{Slot: 15b,tag:{hexenwerk-crafting_result:1b}}] run function hexenwerk:blocks/magical_crafting_table/magical/replace_missplaced_output

data merge entity @s {item:{tag:{RecipeItems:[]}}}
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:1b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:2b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:10b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:11b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:12b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:19b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:20b}]
data modify entity @s item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:21b}]

execute if data entity @s item.tag.RecipeItems[0] run function hexenwerk:blocks/magical_crafting_table/magical/check_recipes
