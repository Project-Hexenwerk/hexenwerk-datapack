# Scheduled Animations
execute as @e[type=#hexenwerk:display_entity,tag=hexenwerk.anim_next_tick] at @s run function hexenwerk:animations/main

# Rotate stuff
execute as @e[type=item_display,tag=hexenwerk.ritual_item_display] at @s run tp @s ~ ~ ~ ~2 ~

# Get selected hotbar slot
execute as @a store result score @s hexenwerk.selected_minecraft_slot run data get entity @s SelectedItemSlot

# Schedule Stuff
execute as @a[scores={hexenwerk.join=1..}] run function hexenwerk:mana/run_regen

# Is Holding Wand
execute as @a[nbt={SelectedItem:{tag:{hexenwerk-wand:1b}}}] at @s run function hexenwerk:wand/main
execute as @a[predicate=hexenwerk:holding/wand_offhand] at @s run function hexenwerk:wand/main

# Is Not Holding Wand
execute as @a[predicate=!hexenwerk:holding/wand_offhand,predicate=!hexenwerk:holding/wand,scores={hexenwerk.holding_wand_timer=1..}] run function hexenwerk:wand/on_unselect

# Spell Events
execute as @e[type=marker,tag=hexenwerk.spell_event] at @s run function hexenwerk:spell_events/main

# Blocks
execute as @e[type=#hexenwerk:custom_block,tag=hexenwerk.block] at @s run function hexenwerk:blocks/main
execute as @e[type=glow_item_frame,tag=hexenwerk.place] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function hexenwerk:blocks/main_place

# Display
execute as @a[predicate=hexenwerk:display/normal] run function hexenwerk:mana/display_main
execute as @a[predicate=hexenwerk:display/water] run function hexenwerk:mana/display_water_main

# Misc
execute as @a[scores={hexenwerk.broken_svs=1..}] run function hexenwerk:mana/regen_of_flower
execute as @a[scores={hexenwerk.deaths=1..}] run function hexenwerk:mana/on_death

# Debug Actionbar
execute if entity @a[tag=hexenwerk.debug] run data modify storage smithed.actionbar:input message set value {json: '["",{"text":"Mana: "},{"score":{"name":"@s","objective":"hexenwerk.mana_current"}},{"text":"/"},{"score":{"name":"@s","objective":"hexenwerk.mana_max"}},{"text":" Spell Slot: "},{"score":{"name":"@s","objective":"hexenwerk.spell_slot"}},{"text":" Spell ID: "},{"score":{"name":"@s","objective":"hexenwerk.spell_id"}},{"text":" Mana Modifiers: "},{"score":{"name":"@s","objective":"hexenwerk.mana_modifier_weapon"}},{"text":"/"},{"score":{"name":"@s","objective":"hexenwerk.mana_modifier_feet"}},{"text":"/"},{"score":{"name":"@s","objective":"hexenwerk.mana_modifier_legs"}},{"text":"/"},{"score":{"name":"@s","objective":"hexenwerk.mana_modifier_chest"}},{"text":"/"},{"score":{"name":"@s","objective":"hexenwerk.mana_modifier_head"}}]',priority: 'persistent'}
execute as @a[tag=hexenwerk.debug] run function #smithed.actionbar:message

# Dev Stone
execute as @a[predicate=hexenwerk:holding/dev_stone,scores={hexenwerk.used_wfoas=1..}] at @s run function hexenwerk:dev/dev_stone/toggle

# Set Scoreboards
scoreboard players set @a[scores={hexenwerk.used_wfoas=1..}] hexenwerk.used_wfoas 0
scoreboard players operation @a[tag=!hexenwerk.attuned_maximum,tag=!hexenwerk.bypass_mana_max] hexenwerk.mana_max = #default hexenwerk.mana_max

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
scoreboard players add @e[type=item_display,tag=hexenwerk.commovus_portal] hexenwerk.spell_event_timer 1
kill @e[type=item_display,tag=hexenwerk.commovus_portal,scores={hexenwerk.spell_event_timer=7..}]

# Why is it so, that when you state that "this week has gone quickly", most others agree with your statement?
