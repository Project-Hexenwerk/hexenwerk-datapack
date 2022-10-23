tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> raycast hit entity ","color":"red"}]
execute if score @s hexenwerk.spell_id matches 1001 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/ardo
execute if score @s hexenwerk.spell_id matches 1002 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/wingardium_leviosa
execute if score @s hexenwerk.spell_id matches 1003 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/attonus
execute if score @s hexenwerk.spell_id matches 1004 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/consedo
execute if score @s hexenwerk.spell_id matches 1005 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/aguamenti

