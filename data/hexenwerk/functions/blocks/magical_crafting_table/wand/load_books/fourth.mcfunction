item replace block ~ ~ ~ container.5 with minecraft:leather_horse_armor{display: {Name: '{"translate":"item.hexenwerk.spellbook","color":"#62DEDE","italic":false}', Lore: ['{"text":"none"}']}, CustomModelData: 1725, hexenwerk-spellbook: 1b, HideFlags:64}
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.display.Lore[] set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[3].book_lore
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[3].book_cmd
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.display.color set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[3].book_color
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-spell_data set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[3]
