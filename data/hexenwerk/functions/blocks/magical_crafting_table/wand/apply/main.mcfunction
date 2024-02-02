execute if data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/first
execute if data block ~ ~ ~ Items[{Slot: 15b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/second
execute if data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/third
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] if data block ~ ~ ~ Items[{Slot: 5b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/fourth
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] if data block ~ ~ ~ Items[{Slot: 23b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/fifth

execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/first
execute unless data block ~ ~ ~ Items[{Slot: 15b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/second
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/third
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] unless data block ~ ~ ~ Items[{Slot: 5b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/fourth
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] unless data block ~ ~ ~ Items[{Slot: 23b, tag: {hexenwerk-id:"spellbook"}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/fifth