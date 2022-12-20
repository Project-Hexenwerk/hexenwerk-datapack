say Hexenwerk Datapack by Flynecraft loaded!
tellraw @a {"translate":"You currently don't have the required recourcepack installed!","color":"red"}

#Add Scoreboards
scoreboard objectives add hexenwerk.used_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hexenwerk.spell_id dummy
scoreboard objectives add hexenwerk.spell_slot dummy
scoreboard objectives add hexenwerk.mana_current dummy
scoreboard objectives add hexenwerk.mana_cost dummy
scoreboard objectives add hexenwerk.mana_max dummy
scoreboard objectives add hexenwerk.mana_regen dummy
scoreboard objectives add hexenwerk.mana_percentage dummy
scoreboard objectives add hexenwerk.temp dummy
scoreboard objectives add hexenwerk.join minecraft.custom:minecraft.leave_game
scoreboard objectives add hexenwerk.deaths deathCount
scoreboard objectives add hexenwerk.broken_svs minecraft.mined:minecraft.structure_void

scoreboard players set #100 hexenwerk.temp 100

#Update stuff from config
function hexenwerk:config

#run schedules
schedule clear hexenwerk:mana/run_regen
function hexenwerk:mana/run_regen