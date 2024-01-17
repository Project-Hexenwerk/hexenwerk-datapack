data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[1] set value 1
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[1] set from block ~ ~ ~ Items[{Slot: 15b}].tag.hexenwerk-spell_data.lore_display
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[1] set from block ~ ~ ~ Items[{Slot: 15b}].tag.hexenwerk-spell_data
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[1].book_lore set from block ~ ~ ~ Items[{Slot: 15b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[1].book_cmd set from block ~ ~ ~ Items[{Slot: 15b}].tag.CustomModelData
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[1].book_color set from block ~ ~ ~ Items[{Slot: 15b}].tag.display.color