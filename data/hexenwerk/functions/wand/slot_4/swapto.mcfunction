 
scoreboard players set @s hexenwerk.spell_slot 4

execute store result score @s hexenwerk.spell_id run data get entity @s SelectedItem.tag.hexenwerk-spells[3]
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[3]

execute unless predicate hexenwerk:holding/wand_offhand unless score @s hexenwerk.spell_id matches 0 run tellraw @s [{"translate":"text.hexenwerk.swapslot", "color":"green", "with":[{"translate":"item.hexenwerk.wand", "color":"light_purple"}, {"score":{"name":"@s", "objective":"hexenwerk.spell_slot"}, "color":"gold"}]},{"text": "\n (", "color": "green"},{"nbt":"SelectedItem.tag.hexenwerk-spell_chat_display[3]","entity":"@s","interpret":true},{"text": ")", "color": "green"}]
execute if predicate hexenwerk:holding/wand_offhand unless score @s hexenwerk.spell_id matches 0 run tellraw @s [{"translate":"text.hexenwerk.swapslot", "color":"green", "with":[{"translate":"item.hexenwerk.wand", "color":"light_purple"}, {"score":{"name":"@s", "objective":"hexenwerk.spell_slot"}, "color":"gold"}]},{"text": " \n(", "color": "green"},{"nbt":"Inventory[{Slot:-106b}].tag.hexenwerk-spell_chat_display[3]","entity":"@s","interpret":true},{"text": ")", "color": "green"}]

execute if score @s hexenwerk.spell_id matches 0 run tellraw @s [{"translate":"text.hexenwerk.swapslot", "color":"green", "with":[{"translate":"item.hexenwerk.wand", "color":"light_purple"}, {"score":{"name":"@s", "objective":"hexenwerk.spell_slot"}, "color":"gold"}]},{"text": " \n (", "color": "green"},{"translate":"text.hexenwerk.spell_none","color": "gray"},{"text": ")", "color": "green"}]

item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/fourth
execute if predicate hexenwerk:holding/wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/fourth
tag @s add hexenwerk.wand.just_switched