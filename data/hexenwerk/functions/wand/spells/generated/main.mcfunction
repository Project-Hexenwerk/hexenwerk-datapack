tag @s add hexenwerk.spell.caster
scoreboard players set #raycast.traveled hexenwerk.temp 0

data remove storage hexenwerk:temp wand_data

execute if score @s hexenwerk.spell_slot matches 1 run function hexenwerk:wand/spells/generated/get_spell_data/1
execute if score @s hexenwerk.spell_slot matches 2 run function hexenwerk:wand/spells/generated/get_spell_data/2
execute if score @s hexenwerk.spell_slot matches 3 run function hexenwerk:wand/spells/generated/get_spell_data/3
execute if score @s hexenwerk.spell_slot matches 4 run function hexenwerk:wand/spells/generated/get_spell_data/4
execute if score @s hexenwerk.spell_slot matches 5 run function hexenwerk:wand/spells/generated/get_spell_data/5

scoreboard players operation @s hexenwerk.temp += #max_raycast_distance hexenwerk.config_only
scoreboard players set #max_raycast_travel hexenwerk.temp 10
scoreboard players operation @s hexenwerk.temp *= #max_raycast_travel hexenwerk.temp

execute if data storage hexenwerk:temp wand_data.id unless data storage hexenwerk:temp wand_data{outdated:1b} run function hexenwerk:wand/spells/generated/start
execute if data storage hexenwerk:temp wand_data{outdated:1b} run tellraw @s [{"text":"[","color":"yellow","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/hexenwerk"},"hoverEvent":{"action":"show_text","contents":"Click to view Hexenwerk on Modrinth!"}},{"text":"Hexenwerk","color":"light_purple","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/hexenwerk"},"hoverEvent":{"action":"show_text","contents":"Click to view Hexenwerk on Modrinth!"}},{"text":"]","color":"yellow","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/hexenwerk"},"hoverEvent":{"action":"show_text","contents":"Click to view Hexenwerk on Modrinth!"}},{"text":" "},{"translate":"text.hexenwerk.cast_outdated","color": "red"}]

tag @s remove hexenwerk.spell.caster
