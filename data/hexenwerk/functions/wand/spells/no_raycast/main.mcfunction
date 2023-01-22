tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing direct spell function","color":"red"}]
playsound minecraft:block.amethyst_cluster.fall voice @s ~ ~ ~ 0.5 0.2
playsound minecraft:item.axe.scrape voice @s ~ ~ ~ 0.5 1.8
playsound minecraft:block.grindstone.use voice @s ~ ~ ~ 0.5 2

execute if score @s hexenwerk.spell_id matches 1 at @s run function hexenwerk:wand/spells/no_raycast/spells_effect/auxiliare
execute if score @s hexenwerk.spell_id matches 2 at @s run function hexenwerk:wand/spells/no_raycast/spells_effect/commovus
execute if score @s hexenwerk.spell_id matches 3 at @s run function hexenwerk:wand/spells/no_raycast/spells_effect/amogius
execute if score @s hexenwerk.spell_id matches 4 at @s run function hexenwerk:wand/spells/no_raycast/spells_effect/circulum_sanitatem


execute unless predicate hexenwerk:is_holding_wand_offhand if score @s hexenwerk.spell_slot matches 1 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:is_holding_wand_offhand if score @s hexenwerk.spell_slot matches 2 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},"!"]
execute unless predicate hexenwerk:is_holding_wand_offhand if score @s hexenwerk.spell_slot matches 3 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},"!"]

execute if predicate hexenwerk:is_holding_wand_offhand if score @s hexenwerk.spell_slot matches 1 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:is_holding_wand_offhand if score @s hexenwerk.spell_slot matches 2 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},"!"]
execute if predicate hexenwerk:is_holding_wand_offhand if score @s hexenwerk.spell_slot matches 3 run tellraw @a[tag=hexenwerk.announce_spell_uses] ["","<",{"selector":"@s"},"> ",{"nbt":"Inventory[{Slot: -106b}].tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},"!"]