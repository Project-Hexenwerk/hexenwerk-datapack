item replace block ~ ~ ~ container.5 with minecraft:book{display: {Name: '{"translate":"item.hexenwerk.spellbook","color":"#62DEDE","italic":false}', Lore: ['{"text":"none"}']}, CustomModelData: 1725, hexenwerk-contained_spell: -1, hexenwerk-lore_display: '', hexenwerk-mana_cost: -1, hexenwerk-spellbook: 1b}
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-lore_display set from block ~ ~ ~ Items[{Slot: 12b}].tag.display.Lore[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-mana_cost set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-mana_cost[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-contained_spell set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.display.Lore[] set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spellbook_lore[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.CustomModelData set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spellbook_cmd[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-chat_display set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_chat_display[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-spell_display set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_display[3]
data modify block ~ ~ ~ Items[{Slot: 5b}].tag.hexenwerk-custom_spell_data set from block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-custom_spell_data[3]
