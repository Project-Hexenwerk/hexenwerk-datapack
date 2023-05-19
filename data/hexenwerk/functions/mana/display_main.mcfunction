execute if entity @s[tag=hexenwerk.attuned_mana_regen,predicate=hexenwerk:display/normal] run function hexenwerk:mana/attuned_display/regen/display
execute if entity @s[predicate=hexenwerk:display/normal,predicate=hexenwerk:holding/maximum_attuned_wand] run function hexenwerk:mana/attuned_display/maximum/display
execute if entity @s[tag=!hexenwerk.attuned_mana_regen,predicate=!hexenwerk:holding/maximum_attuned_wand,predicate=hexenwerk:display/normal] run function hexenwerk:mana/display

execute if entity @s[tag=hexenwerk.attuned_mana_regen,predicate=hexenwerk:display/water] run function hexenwerk:mana/attuned_display/regen/display_water
execute if entity @s[predicate=hexenwerk:display/water,predicate=hexenwerk:holding/maximum_attuned_wand] run function hexenwerk:mana/attuned_display/maximum/display_water
execute if entity @s[tag=!hexenwerk.attuned_mana_regen,predicate=!hexenwerk:holding/maximum_attuned_wand,predicate=hexenwerk:display/water] run function hexenwerk:mana/display_water

