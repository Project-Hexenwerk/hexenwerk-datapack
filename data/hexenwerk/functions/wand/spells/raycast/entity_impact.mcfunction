tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> raycast hit entity ","color":"red"}]
scoreboard players operation .current hexenwerk.spell_id = @s hexenwerk.spell_id

execute if score .current hexenwerk.spell_id matches 1001 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/ardo
execute if score .current hexenwerk.spell_id matches 1002 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/wingardium_leviosa
execute if score .current hexenwerk.spell_id matches 1003 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/attonus
execute if score .current hexenwerk.spell_id matches 1004 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/consedo
execute if score .current hexenwerk.spell_id matches 1005 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/aguamenti
execute if score .current hexenwerk.spell_id matches 1006 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/ignis_temptates
execute if score .current hexenwerk.spell_id matches 1007 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/entity/iunior
execute if score .current hexenwerk.spell_id matches 1008 as @e[type=#hexenwerk:mob,dx=0.05,dy=0.05,dz=0.05,tag=!hexenwerk.spell.caster,limit=1,sort=nearest] at @s run function hexenwerk:wand/spells/raycast/spells_impact/terrae_motus

#spellpack v 
function #hexenwerk_spellpack:raycast/entity_impact
#spellpack ^
