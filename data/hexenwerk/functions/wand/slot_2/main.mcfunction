# DEBUG MESSAGE #
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> selected spell slot is ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.spell_slot"},"color":"gold"}]

# gets the spell id of the selected spell and sets the hexenwerk.spell_id for @s to it
execute store result score @s hexenwerk.spell_id run data get entity @s SelectedItem.tag.hexenwerk-spells[1]
execute if predicate hexenwerk:is_holding_wand_offhand store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[1]

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> selected spell id is ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.spell_id"},"color":"gold"}]


execute store result score @s hexenwerk.mana_cost run data get entity @s SelectedItem.tag.hexenwerk-mana_cost[1]
execute if predicate hexenwerk:is_holding_wand_offhand store result score @s hexenwerk.mana_cost run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-hexenwerk-mana_cost[0]
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> mana cost of selected spell is ","color":"red"},{"score":{"name":"@s","objective":"hexenwerk.mana_cost"},"color":"gold"}]

execute if score @s hexenwerk.mana_cost >= @s hexenwerk.mana_current run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> not doing anything since player doesn't have enough mana","color":"red"}]
execute if score @s hexenwerk.mana_cost >= @s hexenwerk.mana_current run tellraw @s {"translate":"text.hexenwerk.spell.not_enough_mana","color":"red"}
execute if score @s hexenwerk.mana_cost <= @s hexenwerk.mana_current run function hexenwerk:wand/spells/cast
