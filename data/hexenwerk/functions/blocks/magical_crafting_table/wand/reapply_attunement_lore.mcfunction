data modify storage hexenwerk:temp lore set from block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore
data remove block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] run item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/slots
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{range_modifier:10}}}] run item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/range
item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/slots/first
item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/slots/second
item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/slots/third
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] run item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/slots/fourth
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{hexenwerk-attunements:{spellslot_modifier:1b}}}] run item modify block ~ ~ ~ container.12 hexenwerk:attunements/wand/slots/fifth
