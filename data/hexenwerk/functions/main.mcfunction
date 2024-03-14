execute as @a[tag=hexenwerk.watch.scroll_hotbar] store result score @s hexenwerk.hotbar.selected_slot run data get entity @s SelectedItemSlot

execute as @a if predicate hexenwerk:has_item/gui_element run function hexenwerk:block/magical_crafting_table/return_item_to_player/start

# VVV WHILE X VVV
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=hexenwerk.block.gui.open] at @s run function hexenwerk:event/block/while/open
# ΛΛΛ WHILE X ΛΛΛ

# VVV EVENTS VVV
execute as @a[tag=hexenwerk.watch.scroll_hotbar] unless score @s hexenwerk.hotbar.selected_slot = @s hexenwerk.hotbar.selected_slot_old run function hexenwerk:event/player/scroll_hotbar
execute as @e[type=item_display,tag=hexenwerk.block] at @s if block ~ ~ ~ #taglib:air run function hexenwerk:event/block/break
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=!hexenwerk.block.gui.open] at @s if block ~ ~ ~ barrel[open=true] run function hexenwerk:event/block/open
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=hexenwerk.block.gui.open] at @s if block ~ ~ ~ barrel[open=false] run function hexenwerk:event/block/close
execute as @a[scores={hexenwerk.used.wfoas=1..}] run function hexenwerk:event/item/right_click
# ΛΛΛ EVENTS ΛΛΛ

execute as @a run title @s actionbar [{"score":{"name":"@s","objective":"hexenwerk.mana"},"color":"dark_aqua"},{"text": " (","color": "white"},{"score":{"name":"@s","objective":"hexenwerk.mana.max_modifier"},"color":"aqua"},{"text": "/","color": "white"},{"score":{"name":"@s","objective":"hexenwerk.mana.regen_modifier"},"color":"aqua"},{"text": ")","color": "white"}]

execute as @a[tag=hexenwerk.watch.scroll_hotbar] store result score @s hexenwerk.hotbar.selected_slot_old run data get entity @s SelectedItemSlot