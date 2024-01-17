execute unless predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand if score @s hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/use
execute unless predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if score @s[tag=!hexenwerk.dev] hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/use

execute if predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if score @s[tag=!hexenwerk.dev] hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/swapslot_offhand
execute if predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand if score @s hexenwerk.used_wfoas matches 1.. run function hexenwerk:wand/swapslot

execute unless predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if entity @s[tag=hexenwerk.dev] run function hexenwerk:dev/dev_stone/swap_spell/up
execute if predicate hexenwerk:flags/is_sneaking if predicate hexenwerk:holding/wand_offhand if entity @s[tag=hexenwerk.dev] run function hexenwerk:dev/dev_stone/swap_spell/down

scoreboard players add @s hexenwerk.holding_wand_timer 1

execute unless score @s hexenwerk.selected_minecraft_slot = @s hexenwerk.selected_minecraft_slot_old run function hexenwerk:wand/on_select
execute if score @s hexenwerk.holding_wand_timer matches 1 run function hexenwerk:wand/on_select

execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 1 run data modify storage hexenwerk:temp convert_display.input set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data.name

data modify storage hexenwerk:temp convert_display.input set value {name:"None",book_hex:"#2B2B2B",custom_icon:{char:""}}

execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 1 run data modify storage hexenwerk:temp convert_display.input set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data[0].hud_display
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 2 run data modify storage hexenwerk:temp convert_display.input set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data[1].hud_display
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 3 run data modify storage hexenwerk:temp convert_display.input set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data[2].hud_display
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 4 run data modify storage hexenwerk:temp convert_display.input set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data[3].hud_display
execute if predicate hexenwerk:holding/wand_offhand if score @s hexenwerk.spell_slot matches 5 run data modify storage hexenwerk:temp convert_display.input set from entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data[4].hud_display

execute if predicate hexenwerk:holding/wand if score @s hexenwerk.spell_slot matches 1 run data modify storage hexenwerk:temp convert_display.input set from entity @s SelectedItem.tag.hexenwerk-spell_data[0].hud_display
execute if predicate hexenwerk:holding/wand if score @s hexenwerk.spell_slot matches 2 run data modify storage hexenwerk:temp convert_display.input set from entity @s SelectedItem.tag.hexenwerk-spell_data[1].hud_display
execute if predicate hexenwerk:holding/wand if score @s hexenwerk.spell_slot matches 3 run data modify storage hexenwerk:temp convert_display.input set from entity @s SelectedItem.tag.hexenwerk-spell_data[2].hud_display
execute if predicate hexenwerk:holding/wand if score @s hexenwerk.spell_slot matches 4 run data modify storage hexenwerk:temp convert_display.input set from entity @s SelectedItem.tag.hexenwerk-spell_data[3].hud_display
execute if predicate hexenwerk:holding/wand if score @s hexenwerk.spell_slot matches 5 run data modify storage hexenwerk:temp convert_display.input set from entity @s SelectedItem.tag.hexenwerk-spell_data[4].hud_display

function hexenwerk:wand/convert_display/main