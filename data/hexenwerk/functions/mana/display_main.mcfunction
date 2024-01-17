execute if entity @s[tag=hexenwerk.attuned_mana_regen] run function hexenwerk:mana/attuned_display/regen/display
execute if entity @s[predicate=hexenwerk:holding/maximum_attuned_wand] run function hexenwerk:mana/attuned_display/maximum/display
execute if entity @s[tag=!hexenwerk.attuned_mana_regen,predicate=!hexenwerk:holding/maximum_attuned_wand] run function hexenwerk:mana/display
