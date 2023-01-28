tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"starting raycast","color":"red"}]

execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 1 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 2 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 3 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},"!"]

execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 1 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 2 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 3 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},"!"]

tag @s add hexenwerk.spell.caster
scoreboard players set #raycast.traveled hexenwerk.temp 0

playsound minecraft:entity.shulker_bullet.hit voice @a ~ ~ ~ 0.5 1.5
playsound minecraft:entity.bat.takeoff voice @a ~ ~ ~ 0.6 2
function hexenwerk:wand/spells/raycast/raycast
tag @s remove hexenwerk.spell.caster