execute unless data block ~ ~ ~ Items[{Slot: 26b, id: "minecraft:barrier"}] if entity @s[tag=hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/switch_mode/crafting
execute unless data block ~ ~ ~ Items[{Slot: 26b, id: "minecraft:barrier"}] if entity @s[tag=!hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/switch_mode/wand

execute unless data block ~ ~ ~ Items[{Slot: 17b, id: "minecraft:barrier"}] if entity @s[tag=!hexenwerk.magical_crafting_table.wand] run item replace block ~ ~ ~ container.17 with barrier{display: {Name: '{"text":""}'}, HideFlags: 32, CustomModelData: 1726, clear: 1b} 1

execute unless data block ~ ~ ~ Items[{Slot: 17b, id: "minecraft:barrier"}] if entity @s[tag=!hexenwerk.magical_crafting_table.wand] run item replace block ~ ~ ~ container.17 with barrier{display: {Name: '{"translate":"gui.hexenwerk.button.magical_crafting","italic":false,"color":"white"}'}, CustomModelData: 1726, clear: 1b}
execute unless data block ~ ~ ~ Items[{Slot: 17b, id: "minecraft:barrier"}] if entity @s[tag=hexenwerk.magical_crafting_table.wand] run item replace block ~ ~ ~ container.17 with barrier{display: {Name: '{"translate":"gui.hexenwerk.button.wand_crafting","italic":false,"color":"white"}'}, CustomModelData: 1725, clear: 1b}

execute if entity @s[tag=hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/wand_crafter/apply/main
execute if data block ~ ~ ~ Items[{Slot: 0b, tag: {hexenwerk-wand: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand_crafter/shift_in

