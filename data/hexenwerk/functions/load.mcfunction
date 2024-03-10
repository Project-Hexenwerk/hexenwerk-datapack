say reloaded :)

scoreboard objectives add hexenwerk.used_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add hexenwerk.mana dummy
scoreboard objectives add hexenwerk.mana.max dummy
scoreboard objectives add hexenwerk.mana.max_modifier dummy
scoreboard objectives add hexenwerk.mana.regen_modifier dummy
scoreboard objectives add hexenwerk.PUBLIC.mana.max_modifier dummy
scoreboard objectives add hexenwerk.PUBLIC.mana.regen_modifier dummy

scoreboard objectives add hexenwerk.const dummy
scoreboard objectives add hexenwerk.temp dummy
scoreboard objectives add hexenwerk.default dummy

scoreboard players set %mana_max hexenwerk.default 100
scoreboard players set %mana_regen hexenwerk.default 1

scoreboard players set 100 hexenwerk.const 100

function hexenwerk:event/time/second