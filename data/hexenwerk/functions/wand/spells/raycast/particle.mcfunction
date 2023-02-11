scoreboard players operation #current hexenwerk.spell_id = @s hexenwerk.spell_id

execute if score #current hexenwerk.spell_id matches 1001 if predicate hexenwerk:percent/20 run particle flame ^ ^ ^-0.1 0 0 0 0 1 force
execute if score #current hexenwerk.spell_id matches 1002 if predicate hexenwerk:percent/20 run particle end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute if score #current hexenwerk.spell_id matches 1003 if predicate hexenwerk:percent/20 run particle ash ^ ^ ^-0.1 0 0 0 0 5 force
execute if score #current hexenwerk.spell_id matches 1004 if predicate hexenwerk:percent/20 run particle falling_honey ^ ^ ^-0.1 0 0 0 0 2 force
execute if score #current hexenwerk.spell_id matches 1006 if predicate hexenwerk:percent/5 run particle flame ^ ^ ^-0.1 0 0 0 0 1 force
execute if score #current hexenwerk.spell_id matches 1007 if predicate hexenwerk:percent/5 run particle end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute if score #current hexenwerk.spell_id matches 1008 if predicate hexenwerk:percent/5 run particle minecraft:block dirt ^ ^ ^ 0.2 0.2 0.2 1 2 force

#spellpack v 
function #hexenwerk_spellpack:raycast/particles
#spellpack ^
