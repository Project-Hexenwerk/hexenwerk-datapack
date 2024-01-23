# DEBUG MESSAGE #
 

# gets the spell id of the selected spell and sets the hexenwerk.spell_id for @s to it
execute store result score @s hexenwerk.spell_id run data get entity @s SelectedItem.tag.hexenwerk-spells[1]
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[1]


execute unless predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.mana_cost run data get entity @s SelectedItem.tag.hexenwerk-spell_data[1].mana_cost
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.mana_cost run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spell_data[1].mana_cost


execute if score @s hexenwerk.mana_cost >= @s hexenwerk.mana_current run tellraw @s {"translate":"text.hexenwerk.spell.not_enough_mana","color":"red"}
execute if score @s hexenwerk.mana_cost <= @s hexenwerk.mana_current run function hexenwerk:wand/spells/cast
