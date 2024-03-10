execute as @a[scores={hexenwerk.used_wfoas=1..}] run function hexenwerk:event/item/right_click/main

execute as @a run title @s actionbar ["",{"score":{"name":"@s","objective":"hexenwerk.mana"},"color":"dark_aqua"},"/",{"score":{"name":"@s","objective":"hexenwerk.mana.max"},"color":"dark_aqua"}]