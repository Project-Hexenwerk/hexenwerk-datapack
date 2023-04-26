 

execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 1 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 2 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 3 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 4 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[3]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 5 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[4]","entity":"@s","interpret":true},"!"]

execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 1 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 2 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 3 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 4 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[3]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 5 run tellraw @a[tag=!hexenwerk.mute_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[4]","entity":"@s","interpret":true},"!"]

tag @s add hexenwerk.spell.caster

execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.temp run data get entity @s SelectedItem.tag.hexenwerk-attunements.range_modifier
execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.temp run data get entity @s SelectedItem.tag.hexenwerk-attunements.range_modifier
scoreboard players operation @s hexenwerk.temp += #max_raycast_distance hexenwerk.config_only
scoreboard players set #max_raycast_travel hexenwerk.temp 10
scoreboard players operation @s hexenwerk.temp *= #max_raycast_travel hexenwerk.temp

playsound minecraft:entity.shulker_bullet.hit voice @a[tag=!hexenwerk.mute_spell_sounds] ~ ~ ~ 0.5 1.5
playsound minecraft:entity.bat.takeoff voice @a[tag=!hexenwerk.mute_spell_sounds] ~ ~ ~ 0.6 2
function hexenwerk:wand/spells/raycast/raycast

tag @s remove hexenwerk.spell.caster
scoreboard players set #raycast.traveled hexenwerk.temp 1
