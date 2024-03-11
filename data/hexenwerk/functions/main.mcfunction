execute as @a[tag=hexenwerk.watch.scroll_hotbar] store result score @s hexenwerk.hotbar.selected_slot run data get entity @s SelectedItemSlot

execute as @a[tag=hexenwerk.watch.scroll_hotbar] unless score @s hexenwerk.hotbar.selected_slot = @s hexenwerk.hotbar.selected_slot_old run function hexenwerk:event/player/scroll_hotbar
execute as @e[type=glow_item_frame,tag=hexenwerk.block.place] at @s run function hexenwerk:event/block/place
execute as @e[type=item_display,tag=hexenwerk.block] at @s if block ~ ~ ~ #taglib:air run function hexenwerk:event/block/break
execute as @a[scores={hexenwerk.used.wfoas=1..}] run function hexenwerk:event/item/right_click

execute as @a run title @s actionbar [{"score":{"name":"@s","objective":"hexenwerk.mana"},"color":"dark_aqua"},{"text": " (","color": "white"},{"score":{"name":"@s","objective":"hexenwerk.mana.max_modifier"},"color":"aqua"},{"text": "/","color": "white"},{"score":{"name":"@s","objective":"hexenwerk.mana.regen_modifier"},"color":"aqua"},{"text": ")","color": "white"}]

execute as @a[tag=hexenwerk.watch.scroll_hotbar] store result score @s hexenwerk.hotbar.selected_slot_old run data get entity @s SelectedItemSlot