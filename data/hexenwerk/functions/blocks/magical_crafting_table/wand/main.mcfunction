execute if data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-id:"wand"}}] unless score @s hexenwerk.has_wand matches 2.. run scoreboard players add @s hexenwerk.has_wand 1
execute unless data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-id:"wand"}}] if score @s hexenwerk.has_wand matches 1.. run scoreboard players set @s hexenwerk.has_wand 0

# execute unless score @s hexenwerk.has_wand matches 0 if data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attuned:1b}}] run data remove block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[0]

execute if score @s hexenwerk.has_wand matches 1 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/main
execute if score @s hexenwerk.has_wand matches 2.. run function hexenwerk:blocks/magical_crafting_table/wand/apply/main
execute if score @s hexenwerk.has_wand matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/remove_wand

execute if data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attunements:{spellslot_modifier:1b}}}] run item replace block ~ ~ ~ container.17 with minecraft:barrier{CustomModelData:1735,hexenwerk-gui:1b,display:{Name:'{"text":""}'}}
execute unless data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attunements:{spellslot_modifier:1b}}}] run item replace block ~ ~ ~ container.17 with minecraft:barrier{CustomModelData:1725,hexenwerk-gui:1b,display:{Name:'{"text":""}'}}

execute unless score @s hexenwerk.has_wand matches 0 if data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attuned:1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/reapply_attunement_lore