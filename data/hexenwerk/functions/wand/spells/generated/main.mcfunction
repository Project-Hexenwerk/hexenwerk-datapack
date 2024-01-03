tag @s add hexenwerk.spell.caster
scoreboard players set #raycast.traveled hexenwerk.temp 0

data remove storage hexenwerk:temp wand_data

execute if score @s hexenwerk.spell_slot matches 1 run function hexenwerk:wand/spells/generated/get_spell_data/1
execute if score @s hexenwerk.spell_slot matches 2 run function hexenwerk:wand/spells/generated/get_spell_data/2
execute if score @s hexenwerk.spell_slot matches 3 run function hexenwerk:wand/spells/generated/get_spell_data/3
execute if score @s hexenwerk.spell_slot matches 4 run function hexenwerk:wand/spells/generated/get_spell_data/4
execute if score @s hexenwerk.spell_slot matches 5 run function hexenwerk:wand/spells/generated/get_spell_data/5

scoreboard players operation @s hexenwerk.temp += #max_raycast_distance hexenwerk.config_only
scoreboard players set #max_raycast_travel hexenwerk.temp 10
scoreboard players operation @s hexenwerk.temp *= #max_raycast_travel hexenwerk.temp

execute unless score @s hexenwerk.spell_id matches 0 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"wand_data.chat_display","storage":"hexenwerk:temp","interpret":true,"italic":false},"!"]

function hexenwerk:wand/spells/generated/start with storage hexenwerk:temp wand_data.events

execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run execute anchored eyes positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/generated/raycast with storage hexenwerk:temp wand_data.events
execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:entity.shulker_bullet.hit voice @a[tag=!hexenwerk.mute_spell_sounds] ~ ~ ~ 0.5 1.5
execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:entity.bat.takeoff voice @a[tag=!hexenwerk.mute_spell_sounds] ~ ~ ~ 0.6 2

execute unless data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:block.amethyst_cluster.fall voice @s[tag=!mute_spell_sounds] ~ ~ ~ 0.5 0.2
execute unless data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:item.axe.scrape voice @s[tag=!mute_spell_sounds] ~ ~ ~ 0.5 1.8
execute unless data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:block.grindstone.use voice @s[tag=!mute_spell_sounds] ~ ~ ~ 0.5 2

tag @s remove hexenwerk.spell.caster
