# Get selected hotbar slot
execute as @a store result score @s hexenwerk.selected_minecraft_slot run data get entity @s SelectedItemSlot

# Schedule Stuff
execute as @a[scores={hexenwerk.join=1..}] run function hexenwerk:mana/run_regen

# Is Holding Wand
execute as @a[predicate=hexenwerk:holding/wand] at @s run function hexenwerk:wand/main
execute as @a[predicate=hexenwerk:holding/wand_offhand] at @s run function hexenwerk:wand/main

# Is Not Holding Wand
execute as @a[predicate=!hexenwerk:holding/wand_offhand,predicate=!hexenwerk:holding/wand,scores={hexenwerk.holding_wand_timer=1..}] run function hexenwerk:wand/on_unselect

# Spell Events
execute as @e[type=marker,tag=hexenwerk.spell_event] at @s run function hexenwerk:spell_events/main

# Blocks
execute as @e[type=#hexenwerk:custom_block,tag=hexenwerk.block] at @s run function hexenwerk:blocks/main
execute as @e[type=glow_item_frame,tag=hexenwerk.place] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:blocks/main_place

# Display
execute as @a[predicate=hexenwerk:display/normal] run function hexenwerk:mana/display
execute as @a[predicate=hexenwerk:display/water] run function hexenwerk:mana/display_water

# Misc
execute as @a[scores={hexenwerk.broken_svs=1..}] run function hexenwerk:mana/regen_of_flower
execute as @e[scores={hexenwerk.deaths=1..}] run function hexenwerk:mana/on_death

# Debug
execute as @a[tag=hexenwerk.debug] run title @s actionbar ["",{"text":"Mana: "},{"score":{"name":"@s","objective":"hexenwerk.mana_current"}},{"text":"/"},{"score":{"name":"@s","objective":"hexenwerk.mana_max"}},{"text":" Spell Slot: "},{"score":{"name":"@s","objective":"hexenwerk.spell_slot"}},{"text":" Spell ID: "},{"score":{"name":"@s","objective":"hexenwerk.spell_id"}}]

# Dev Stone
execute as @a[predicate=hexenwerk:holding/dev_stone,scores={hexenwerk.used_wfoas=1..}] at @s run function hexenwerk:dev/dev_stone/toggle

# Set Scoreboards
scoreboard players set @a[scores={hexenwerk.used_wfoas=1..}] hexenwerk.used_wfoas 0
scoreboard players operation @a[tag=!hexenwerk.ignore_default_mana_max] hexenwerk.mana_max = #default hexenwerk.mana_max

# Unlock Triggers
scoreboard players enable @a hexenwerk.contributors
scoreboard players enable @a hexenwerk.patrons
scoreboard players enable @a hexenwerk.settings
scoreboard players enable @a hexenwerk.settings_action

# Run Triggers
execute as @a run function hexenwerk:triggers/main

# Get selected hotbar slot
execute as @a store result score @s hexenwerk.selected_minecraft_slot_old run data get entity @s SelectedItemSlot

# Other Stuff
scoreboard players add @e[tag=hexenwerk.commovus.item_display,scores={hexenwerk.spell_event_timer=1..}] hexenwerk.spell_event_timer 1
kill @e[tag=hexenwerk.commovus.item_display,scores={hexenwerk.spell_event_timer=6..}]