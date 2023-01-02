execute if data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk-spellbook: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/first
execute if data block ~ ~ ~ Items[{Slot: 15b, tag: {hexenwerk-spellbook: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/second
execute if data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk-spellbook: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/third

execute unless data block ~ ~ ~ Items[{Slot: 6b, tag: {hexenwerk-spellbook: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/first
execute unless data block ~ ~ ~ Items[{Slot: 15b, tag: {hexenwerk-spellbook: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/second
execute unless data block ~ ~ ~ Items[{Slot: 24b, tag: {hexenwerk-spellbook: 1b}}] run function hexenwerk:blocks/magical_crafting_table/wand/apply/remove/third
