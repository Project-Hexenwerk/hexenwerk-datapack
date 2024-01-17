tellraw @a ["","-v-RETURN MATCHING IF THIS RUNS ITS A WIN-v-","\n","Copy Display: ","\n",{"nbt":"copy_display","storage":"hexenwerk:temp","color":"green"},"\n","\n","Copy Player: ","\n",{"nbt":"copy_player","storage":"hexenwerk:temp","color":"red"},"\n","-^-RETURN MATCHING IF THIS RUNS ITS A WIN-^-"]

execute store result score %count hexenwerk.temp run data get entity @s SelectedItem.Count
scoreboard players add %count hexenwerk.temp 2
item modify entity @s weapon.mainhand hexenwerk:add
execute if predicate hexenwerk:holding/unstackable run function hexenwerk:rituals/items/return_matching/unstackable with storage hexenwerk
item replace entity @e[type=item_display,tag=hexenwerk.that,sort=nearest,limit=1] container.0 with air

