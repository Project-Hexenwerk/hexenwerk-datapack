tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> switchig magical crafting table mode to wand crafting","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> adding \"hexenwerk.magical_crafting_table.wand\" tag","color":"red"}]
tag @s add hexenwerk.magical_crafting_table.wand

function hexenwerk:blocks/magical_crafting_table/switch_mode/remove_items/magical
function hexenwerk:blocks/magical_crafting_table/gui/mask/wand
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting gui items from storage","color":"red"}]
