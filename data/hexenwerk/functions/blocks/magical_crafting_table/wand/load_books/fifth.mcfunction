item replace block ~ ~ ~ container.23 with minecraft:leather_horse_armor{display: {Name: '{"translate":"item.hexenwerk.spellbook","color":"#62DEDE","italic":false}', Lore: ['{"text":"none"}']}, CustomModelData: 1725, hexenwerk-contained_spell: -1, hexenwerk-lore_display: '', hexenwerk-mana_cost: -1, hexenwerk-spellbook: 1b}
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-lore_display set from block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-mana_cost set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-mana_cost[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-contained_spell set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.display.Lore[] set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spellbook_lore[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spellbook_cmd[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-chat_display set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_chat_display[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-spell_display set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_display[4]
data modify block ~ ~ ~ Items[{Slot: 23b}].tag.hexenwerk-spell_data set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[4]
