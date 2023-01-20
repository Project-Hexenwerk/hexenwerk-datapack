tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> sucessfully swapped wand slot to ","color":"red"},{"text":"1","color":"gold"}]
scoreboard players set @s hexenwerk.spell_slot 1

execute unless predicate hexenwerk:is_holding_wand_offhand run tellraw @s [{"translate":"text.hexenwerk.swapslot_1"},{"text": "\n (", "color": "green"},{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},{"text": " -> ", "color": "yellow"},{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},{"text": ")", "color": "green"}]
execute if predicate hexenwerk:is_holding_wand_offhand run tellraw @s [{"translate":"text.hexenwerk.swapslot_1"},{"text": "\n (", "color": "green"},{"nbt":"Inventory[{Slot:-106b}].tag.hexenwerk-spell_chat_display[2]","entity":"@s","interpret":true},{"text": " -> ", "color": "yellow"},{"nbt":"Inventory[{Slot:-106b}].tag.hexenwerk-spell_chat_display[0]","entity":"@s","interpret":true},{"text": ")", "color": "green"}]

item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/first
execute if predicate hexenwerk:is_holding_wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/first
tag @s add hexenwerk.wand.just_switched