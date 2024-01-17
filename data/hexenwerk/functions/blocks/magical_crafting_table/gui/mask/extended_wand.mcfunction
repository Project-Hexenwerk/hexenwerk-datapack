data modify block ~ ~ ~ Items insert 0 from storage minecraft:hexenwerk_guis extended_wand_crafting[]

function hexenwerk:blocks/magical_crafting_table/gui/check_extra/extended_wand

data modify block ~ ~ ~ Items insert -1 from storage minecraft:hexenwerk_guis extended_wand_crafting[]
item replace block ~ ~ ~ container.17 with minecraft:barrier{CustomModelData:1735,hexenwerk-gui:1b}
