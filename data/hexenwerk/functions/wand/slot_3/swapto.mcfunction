tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> sucessfully swapped wand slot to ","color":"red"},{"text":"3","color":"gold"}]
scoreboard players set @s hexenwerk.spell_slot 3
tellraw @s {"translate":"text.hexenwerk.swapslot_3"}
item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/third
execute if predicate hexenwerk:is_holding_wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/third
tag @s add hexenwerk.wand.just_switched