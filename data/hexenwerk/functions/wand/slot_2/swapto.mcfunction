tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> sucessfully swapped wand slot to ","color":"red"},{"text":"2","color":"gold"}]
scoreboard players set @s hexenwerk.spell_slot 2

execute store result score @s hexenwerk.spell_id run data get entity @s SelectedItem.tag.hexenwerk-spells[1]
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[1]

execute unless predicate hexenwerk:holding/wand_offhand unless score @s hexenwerk.spell_id matches 0 run tellraw @s [{"translate":"text.hexenwerk.swapslot_2"},{"text": "\n (", "color": "green"},{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},{"text": ")", "color": "green"}]
execute if predicate hexenwerk:holding/wand_offhand unless score @s hexenwerk.spell_id matches 0 run tellraw @s [{"translate":"text.hexenwerk.swapslot_2"},{"text": " \n(", "color": "green"},{"nbt":"Inventory[{Slot:-106b}].tag.hexenwerk-spell_chat_display[1]","entity":"@s","interpret":true},{"text": ")", "color": "green"}]

execute if score @s hexenwerk.spell_id matches 0 run tellraw @s [{"translate":"text.hexenwerk.swapslot_2"},{"text": " \n (", "color": "green"},{"translate":"text.hexenwerk.spell_none_2","color": "gray"},{"text": ")", "color": "green"}]

item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/second
execute if predicate hexenwerk:holding/wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/second
tag @s add hexenwerk.wand.just_switched