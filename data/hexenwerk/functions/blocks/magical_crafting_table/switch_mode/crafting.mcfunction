tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> switchig magical crafting table mode to magical crafting","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> removing \"hexenwerk.magical_crafting_table.wand\" tag","color":"red"}]
tag @s remove hexenwerk.magical_crafting_table.wand

function hexenwerk:blocks/magical_crafting_table/switch_mode/remove_items/crafting
function hexenwerk:blocks/magical_crafting_table/gui/mask/magical
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting gui items from storage","color":"red"}]
