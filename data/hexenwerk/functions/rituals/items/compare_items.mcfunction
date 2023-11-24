tellraw @a ["","-v-COMPARE ITEMS BEFORE-v-","\n","Copy Display: ","\n",{"nbt":"copy_display","storage":"hexenwerk:temp","color":"green"},"\n","\n","Copy Player: ","\n",{"nbt":"copy_player","storage":"hexenwerk:temp","color":"red"},"\n","-^-COMPARE ITEMS BEFORE-^-"]

data remove storage hexenwerk:temp copy_display.item.tag
data modify storage hexenwerk:temp copy_display.item.tag set from storage hexenwerk item.tag
data modify storage hexenwerk:temp copy_display.item.id set from storage hexenwerk item.id

data remove storage hexenwerk:temp copy_player.item.tag
data modify storage hexenwerk:temp copy_player.item.tag set from entity @s SelectedItem.tag
data modify storage hexenwerk:temp copy_player.item.id set from entity @s SelectedItem.id

tellraw @a ["","-v-COMPARE ITEMS AFTER-v-","\n","Copy Display: ","\n",{"nbt":"copy_display","storage":"hexenwerk:temp","color":"green"},"\n","\n","Copy Player: ","\n",{"nbt":"copy_player","storage":"hexenwerk:temp","color":"red"},"\n","-^-COMPARE ITEMS AFTER-^-"]

say @s

scoreboard players set %escape_function hexenwerk.temp 1
execute store result score %escape_function hexenwerk.temp run data modify storage hexenwerk:temp copy_display.item set from storage hexenwerk:temp copy_player.item
execute if score %escape_function hexenwerk.temp matches 0 run say escaped
