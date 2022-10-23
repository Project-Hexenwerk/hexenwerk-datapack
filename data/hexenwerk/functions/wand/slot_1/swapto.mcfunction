tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> sucessfully swapped wand slot to ","color":"red"},{"text":"1","color":"gold"}]
scoreboard players set @s hexenwerk.spell_slot 1
tellraw @s {"translate":"text.hexenwerk.swapslot_1"}
item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/first
execute if predicate hexenwerk:is_holding_wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/first
tag @s add hexenwerk.wand.just_switched