scoreboard players set @s hexenwerk.crafting_recipe 0

data merge entity @s {Item:{tag:{RecipeItems:[]}}}
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:1b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:2b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:3b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:10b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:11b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:12b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:19b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:20b}]
data modify entity @s Item.tag.RecipeItems append from block ~ ~ ~ Items[{Slot:21b}]

item modify block ~ ~ ~ container.1 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.2 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.3 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.10 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.11 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.12 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.19 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.20 hexenwerk:remove_crafting_output_tag
item modify block ~ ~ ~ container.21 hexenwerk:remove_crafting_output_tag

## Spellbooks 
# Generic Spellbook
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book"}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 2

# Ardo
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:fire_charge"}] run scoreboard players set @s hexenwerk.crafting_recipe 1

# Auxiliare
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:glistering_melon_slice"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:scute"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:scute"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:glistering_melon_slice"}] run scoreboard players set @s hexenwerk.crafting_recipe 3
# Wingardium Leviosa
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:shulker_shell"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:shulker_shell"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:shulker_shell"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:ender_pearl"}] run scoreboard players set @s hexenwerk.crafting_recipe 4

# Commovus
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:jigsaw",tag:{hexenwerk-ender_core:1b}}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:ender_pearl"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:ender_pearl"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:repeating_command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 5

# Aguamenti
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:cod"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:cod"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:cod"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:water_bucket"}] run scoreboard players set @s hexenwerk.crafting_recipe 6

# Ignis Temptates
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:jigsaw",tag:{hexenwerk-blaze_core:1b}}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:jigsaw",tag:{hexenwerk-blaze_core:1b}}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:1001}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:repeating_command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 7

# Circulum Sanitatem
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:dragon_breath"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:glistering_melon_slice"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:glistering_melon_slice"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:repeating_command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 8

# Attonus
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:tnt"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:gunpowder"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:gunpowder"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:jigsaw",tag:{hexenwerk-explosive_core:1b}}] run scoreboard players set @s hexenwerk.crafting_recipe 9

# Terrae Motus
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diorite"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:calcite"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:granite"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:1003}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:repeating_command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 10

# Consedo
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:honey_bottle"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:honeycomb"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:honeycomb"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:repeating_command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 11

# Iunior
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:ghast_tear"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:poppy"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:poppy"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:book",tag:{hexenwerk-spellbook:1b,hexenwerk-contained_spell:-1}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:turtle_egg"}] run scoreboard players set @s hexenwerk.crafting_recipe 12

## Items/Blocks
# Magical Crafting Table
execute unless data entity @s Item.tag.RecipeItems[9] if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:crafting_table"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:19b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 13

# Magical Wand
execute unless data entity @s Item.tag.RecipeItems[3] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:repeating_command_block"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:stick"}] if data block ~ ~ ~ Items[{Slot:19b,id:"minecraft:stick"}] run scoreboard players set @s hexenwerk.crafting_recipe 14

# Magical Crystal
execute unless data entity @s Item.tag.RecipeItems[9] if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:19b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:command_block"}] if data block ~ ~ ~ Items[{Slot:21b,id:"minecraft:command_block"}] run scoreboard players set @s hexenwerk.crafting_recipe 15

## Attunements
# Expansion/Slots
execute unless data entity @s Item.tag.RecipeItems[5] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:jigsaw",tag:{hexenwerk-attunement:"expansion"}}] if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:jigsaw",tag:{hexenwerk-attunement:"expansion"}}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:jigsaw",tag:{hexenwerk-attunement:"expansion"}}] if data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:warped_fungus_on_a_stick",tag:{hexenwerk-wand:1b,hexenwerk-attuned:0b}}] if data block ~ ~ ~ Items[{Slot:20b,id:"minecraft:jigsaw",tag:{hexenwerk-attunement:"expansion"}}] run scoreboard players set @s hexenwerk.crafting_recipe 16

execute if score @s hexenwerk.crafting_recipe matches 1 run function hexenwerk:blocks/magical_crafting_table/magical/craft/ardo
execute if score @s hexenwerk.crafting_recipe matches 2 run function hexenwerk:blocks/magical_crafting_table/magical/craft/generic
execute if score @s hexenwerk.crafting_recipe matches 3 run function hexenwerk:blocks/magical_crafting_table/magical/craft/auxiliare

execute if score @s hexenwerk.crafting_recipe matches 4 run function hexenwerk:blocks/magical_crafting_table/magical/craft/wingardium_leviosa
execute if score @s hexenwerk.crafting_recipe matches 5 run function hexenwerk:blocks/magical_crafting_table/magical/craft/commovus
execute if score @s hexenwerk.crafting_recipe matches 6 run function hexenwerk:blocks/magical_crafting_table/magical/craft/aguamenti
execute if score @s hexenwerk.crafting_recipe matches 7 run function hexenwerk:blocks/magical_crafting_table/magical/craft/ignis_temptates
execute if score @s hexenwerk.crafting_recipe matches 8 run function hexenwerk:blocks/magical_crafting_table/magical/craft/circulum_sanitatem
execute if score @s hexenwerk.crafting_recipe matches 9 run function hexenwerk:blocks/magical_crafting_table/magical/craft/attonus
execute if score @s hexenwerk.crafting_recipe matches 10 run function hexenwerk:blocks/magical_crafting_table/magical/craft/terrae_motus
execute if score @s hexenwerk.crafting_recipe matches 11 run function hexenwerk:blocks/magical_crafting_table/magical/craft/consedo
execute if score @s hexenwerk.crafting_recipe matches 12 run function hexenwerk:blocks/magical_crafting_table/magical/craft/iunior
execute if score @s hexenwerk.crafting_recipe matches 13 run function hexenwerk:blocks/magical_crafting_table/magical/craft/magical_crafting_table
execute if score @s hexenwerk.crafting_recipe matches 14 run function hexenwerk:blocks/magical_crafting_table/magical/craft/wand
execute if score @s hexenwerk.crafting_recipe matches 15 run function hexenwerk:blocks/magical_crafting_table/magical/craft/magical_crystal
execute if score @s hexenwerk.crafting_recipe matches 16 run function hexenwerk:blocks/magical_crafting_table/magical/craft/attunements/slots
execute if score @s hexenwerk.crafting_recipe matches 0 run item replace block ~ ~ ~ container.15 with air
execute if score @s hexenwerk.crafting_recipe matches 0 run scoreboard players set @s hexenwerk.crafting_result_time 0