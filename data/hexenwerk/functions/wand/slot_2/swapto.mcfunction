 
scoreboard players set @s hexenwerk.spell_slot 2

execute store result score @s hexenwerk.spell_id run data get entity @s SelectedItem.tag.hexenwerk-spells[1]
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[1]

playsound block.beehive.enter player @s ~ ~ ~ 0.4 2
playsound block.amethyst_block.resonate player @s ~ ~ ~ 0.3 0.5
item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/second
execute if predicate hexenwerk:holding/wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/second
tag @s add hexenwerk.wand.just_switched