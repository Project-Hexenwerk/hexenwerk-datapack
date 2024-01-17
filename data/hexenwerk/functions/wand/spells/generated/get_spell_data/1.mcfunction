execute unless predicate hexenwerk:holding/wand_offhand run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-spell_data[0]
execute if predicate hexenwerk:holding/wand_offhand run data modify storage hexenwerk:temp wand_data set from entity @s Inventory[{Slot: -106b}].tag.hexenwerk-spell_data[0]
