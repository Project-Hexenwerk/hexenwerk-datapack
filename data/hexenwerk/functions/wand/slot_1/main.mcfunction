# DEBUG MESSAGE #
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> selected spell slot is ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.spell_slot"},"color":"gold"}]

# gets the spell id of the selected spell and sets the hexenwerk.spell_id for @s to it
execute store result score @s hexenwerk.spell_id run data get entity @s SelectedItem.tag.hexenwerk-spells[0]
execute if predicate hexenwerk:is_holding_wand_offhand store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[0]


# DEBUG MESSAGE #
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> selected spell id is ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.spell_id"},"color":"gold"}]

# runs the function that runs the spell
execute if score @s hexenwerk.spell_id matches 0 run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> not running anything","color":"red"}]
execute if score @s hexenwerk.spell_id matches 1..999 run function hexenwerk:wand/spells/no_raycast/main
execute if score @s hexenwerk.spell_id matches 1000.. anchored eyes positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/main
