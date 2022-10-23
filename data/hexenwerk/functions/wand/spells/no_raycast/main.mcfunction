tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing direct spell function","color":"red"}]
playsound minecraft:block.amethyst_cluster.fall voice @s ~ ~ ~ 0.5 0.2
playsound minecraft:item.axe.scrape voice @s ~ ~ ~ 0.5 1.8
playsound minecraft:block.grindstone.use voice @s ~ ~ ~ 0.5 2
execute if score @s hexenwerk.spell_id matches 1 at @s run function hexenwerk:wand/spells/no_raycast/spells_effect/auxiliare
execute if score @s hexenwerk.spell_id matches 2 at @s run function hexenwerk:wand/spells/no_raycast/spells_effect/commovus