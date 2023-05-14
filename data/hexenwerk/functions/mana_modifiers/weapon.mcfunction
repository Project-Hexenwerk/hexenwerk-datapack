execute store result score @s hexenwerk.mana_modifier_weapon run data get entity @s SelectedItem.tag.hexenwerk-attunements.mana_max_modifier
execute if predicate hexenwerk:holding/wand_offhand store result score @s hexenwerk.mana_modifier_weapon run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-attunements.mana_max_modifier
function hexenwerk:mana/update_max