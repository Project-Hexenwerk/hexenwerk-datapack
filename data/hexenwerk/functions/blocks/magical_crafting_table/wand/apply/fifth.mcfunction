data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[4] set value 1
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[4] set from block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-spell_data.lore_display
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[4] set from block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-spell_data
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[4].book_lore set from block ~ ~ ~ Items[{Slot: 23b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[4].book_cmd set from block ~ ~ ~ Items[{Slot: 23b}].tag.CustomModelData
data modify block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[4].book_color set from block ~ ~ ~ Items[{Slot: 23b}].tag.display.color