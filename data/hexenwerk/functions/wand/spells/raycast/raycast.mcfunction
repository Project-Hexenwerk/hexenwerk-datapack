execute unless block ~ ~ ~ #hexenwerk:transparent run function hexenwerk:wand/spells/raycast/on_impact
execute if score @s hexenwerk.spell_id matches 1001 if predicate hexenwerk:20_percent run particle flame ^ ^ ^-0.1 
execute if block ~ ~ ~ #hexenwerk:transparent positioned ^ ^ ^0.1 run function hexenwerk:wand/spells/raycast/raycast