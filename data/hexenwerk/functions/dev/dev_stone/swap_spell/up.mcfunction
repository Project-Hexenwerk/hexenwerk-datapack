execute store result score @s hexenwerk.spell_id run data get entity @s Inventory[{Slot:-106b}].tag.hexenwerk-spells[0]
scoreboard players add @s hexenwerk.spell_id 1
tellraw @s ["",{"text":"Switched spell on first spell slot to","color":"aqua"},{"text":" "},{"score":{"name":"@s","objective":"hexenwerk.spell_id"},"color":"gold"}]
execute store result storage hexenwerk:temp spell_id int 1 run scoreboard players get @s hexenwerk.spell_id
item modify entity @s weapon.offhand hexenwerk:dev_stone/storage_to_wand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air