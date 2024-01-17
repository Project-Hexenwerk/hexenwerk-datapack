data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[0] set value 1
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[0] set from block ~ ~ ~ Items[{Slot: 6b}].tag.hexenwerk-spell_data.lore_display
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[0] set from block ~ ~ ~ Items[{Slot: 6b}].tag.hexenwerk-spell_data
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[0].book_lore set from block ~ ~ ~ Items[{Slot: 6b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[0].book_cmd set from block ~ ~ ~ Items[{Slot: 6b}].tag.CustomModelData
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[0].book_color set from block ~ ~ ~ Items[{Slot: 6b}].tag.display.color