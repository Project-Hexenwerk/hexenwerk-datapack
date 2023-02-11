scoreboard objectives remove hexenwerk.used_wfoas
scoreboard objectives remove hexenwerk.spell_id
scoreboard objectives remove hexenwerk.spell_slot
scoreboard objectives remove hexenwerk.spell_event_id
scoreboard objectives remove hexenwerk.spell_event_timer
scoreboard objectives remove hexenwerk.mana_current
scoreboard objectives remove hexenwerk.mana_cost
scoreboard objectives remove hexenwerk.mana_max
scoreboard objectives remove hexenwerk.mana_regen
scoreboard objectives remove hexenwerk.mana_percentage
scoreboard objectives remove hexenwerk.temp
scoreboard objectives remove hexenwerk.join
scoreboard objectives remove hexenwerk.deaths
scoreboard objectives remove hexenwerk.broken_svs
scoreboard objectives remove hexenwerk.took_gui
scoreboard objectives remove hexenwerk.has_wand
scoreboard objectives remove hexenwerk.temp
scoreboard objectives remove hexenwerk.took_gui_item
scoreboard objectives remove hexenwerk.config_only
scoreboard objectives remove hexenwerk.holding_wand_timer
scoreboard objectives remove hexenwerk.contributors
scoreboard objectives remove hexenwerk.gui.page
scoreboard objectives remove hexenwerk.selected_minecraft_slot
scoreboard objectives remove hexenwerk.selected_minecraft_slot_old

tellraw @a {"translate":"Successfully uninstalled the Datapack, you can now remove it from the world folder! It also has been disabled for your convenience!","color":"green"}
datapack disable "file/Hexenwerk-Datapack"

