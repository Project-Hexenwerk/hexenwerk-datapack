execute if score @s hexenwerk.spell_slot matches 1 run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-custom_spell_data[0]
execute if score @s hexenwerk.spell_slot matches 2 run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-custom_spell_data[1]
execute if score @s hexenwerk.spell_slot matches 3 run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-custom_spell_data[2]
execute if score @s hexenwerk.spell_slot matches 4 run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-custom_spell_data[3]
execute if score @s hexenwerk.spell_slot matches 5 run data modify storage hexenwerk:temp wand_data set from entity @s SelectedItem.tag.hexenwerk-custom_spell_data[4]

tellraw @a {"nbt":"wand_data","storage":"hexenwerk:temp"}

function hexenwerk:wand/spells/generated/start with storage hexenwerk:temp wand_data.events
say a