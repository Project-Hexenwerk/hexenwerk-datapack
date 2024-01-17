execute unless data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attunements:{spellslot_modifier:1b}}}] if entity @s[tag=hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/gui/mask/wand
execute if data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attunements:{spellslot_modifier:1b}}}] run function hexenwerk:blocks/magical_crafting_table/gui/mask/extended_wand
execute if entity @s[tag=!hexenwerk.magical_crafting_table.wand] run function hexenwerk:blocks/magical_crafting_table/gui/mask/magical
