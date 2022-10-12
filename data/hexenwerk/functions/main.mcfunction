#general functions
execute as @a[predicate=hexenwerk:is_holding_wand] at @s run function hexenwerk:wand/main
execute as @a[predicate=hexenwerk:is_holding_wand_offhand] at @s run function hexenwerk:wand/main
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{hexenwerk.place_magical_flower:1b}}}] at @s run function hexenwerk:magical_flower/place
execute as @e[type=glow_item_frame,tag=hexenwerk.magical_flower] at @s unless block ~ ~ ~ structure_void run function hexenwerk:magical_flower/destroy
#debug display
execute as @a[tag=hexenwerk.debug] run title @s actionbar ["",{"text":"[","color":"dark_aqua"},{"text":"DEBUG","color":"aqua"},{"text":" DISPLAY","color":"aqua"},{"text":"] ","color":"dark_aqua"},{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.mana_current"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.mana_max"},"color":"aqua"}]

#set scoreboards
scoreboard players set @a[scores={hexenwerk.used_wfoas=1..}] hexenwerk.used_wfoas 0
scoreboard players operation @a[tag=!hexenwerk.ignore_default_mana_max] hexenwerk.mana_max = #default hexenwerk.mana_max