#schedule stuff
execute as @a[scores={hexenwerk.join=1..}] run function hexenwerk:mana/run_regen

#general functions
execute as @a[predicate=hexenwerk:is_holding_wand] at @s run function hexenwerk:wand/main
execute as @a[predicate=hexenwerk:is_holding_wand_offhand] at @s run function hexenwerk:wand/main
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{hexenwerk.place_magical_flower:1b}}}] at @s run function hexenwerk:magical_flower/place
execute as @e[type=glow_item_frame,tag=hexenwerk.magical_flower] at @s unless block ~ ~ ~ structure_void run function hexenwerk:magical_flower/destroy
execute as @a[gamemode=survival,tag=!hexenwerk.dev,predicate=hexenwerk:not_drowning] run function hexenwerk:mana/display
execute as @a[gamemode=adventure,tag=!hexenwerk.dev,predicate=hexenwerk:not_drowning] run function hexenwerk:mana/display
execute as @a[gamemode=survival,tag=!hexenwerk.dev,predicate=!hexenwerk:not_drowning] run function hexenwerk:mana/display_water
execute as @a[gamemode=adventure,tag=!hexenwerk.dev,predicate=!hexenwerk:not_drowning] run function hexenwerk:mana/display_water

#debug display
execute as @a[tag=hexenwerk.dev] run title @s actionbar ["",{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.mana_current"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.mana_max"},"color":"aqua"}]

#comment/remove in release
execute as @a[predicate=hexenwerk:is_holding_dev_stone,scores={hexenwerk.used_wfoas=1..}] at @s run function hexenwerk:dev/dev_stone/toggle

#set scoreboards
scoreboard players set @a[scores={hexenwerk.used_wfoas=1..}] hexenwerk.used_wfoas 0
scoreboard players operation @a[tag=!hexenwerk.ignore_default_mana_max] hexenwerk.mana_max = #default hexenwerk.mana_max