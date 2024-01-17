data modify block ~ ~ ~ Items insert 0 from storage minecraft:hexenwerk_guis wand_crafting[]

function hexenwerk:blocks/magical_crafting_table/gui/check_extra/wand

data modify block ~ ~ ~ Items insert -1 from storage minecraft:hexenwerk_guis wand_crafting[]
execute if data block ~ ~ ~ Items[{Slot: 12b, tag: {hexenwerk-attunements:{spellslot_modifier:1b}}}] run item replace block ~ ~ ~ container.17 with minecraft:barrier{CustomModelData:1735,hexenwerk-gui:1b}
