data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[2] set value 1
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[2] set from block ~ ~ ~ Items[{Slot: 24b}].tag.hexenwerk-spell_data.lore_display
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[2] set from block ~ ~ ~ Items[{Slot: 24b}].tag.hexenwerk-spell_data
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[2].book_lore set from block ~ ~ ~ Items[{Slot: 24b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[2].book_cmd set from block ~ ~ ~ Items[{Slot: 24b}].tag.CustomModelData
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[2].book_color set from block ~ ~ ~ Items[{Slot: 24b}].tag.display.color