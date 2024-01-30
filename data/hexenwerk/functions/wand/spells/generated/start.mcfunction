tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<", {"selector":"@s"},"> ",{"nbt":"wand_data.chat_display","storage":"hexenwerk:temp","interpret":true,"italic":false},"!"]

function hexenwerk:wand/spells/generated/events/cast with storage hexenwerk:temp wand_data.events

execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} anchored eyes rotated as @s positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/generated/slowcast/start with storage hexenwerk:temp wand_data.events
execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:entity.shulker_bullet.hit voice @a[tag=!hexenwerk.mute_spell_sounds] ~ ~ ~ 0.5 1.5
execute if data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:entity.bat.takeoff voice @a[tag=!hexenwerk.mute_spell_sounds] ~ ~ ~ 0.6 2

execute unless data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:block.amethyst_cluster.fall voice @s[tag=!mute_spell_sounds] ~ ~ ~ 0.5 0.2
execute unless data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:item.axe.scrape voice @s[tag=!mute_spell_sounds] ~ ~ ~ 0.5 1.8
execute unless data storage hexenwerk:temp {wand_data:{start_raycast:1b}} run playsound minecraft:block.grindstone.use voice @s[tag=!mute_spell_sounds] ~ ~ ~ 0.5 2