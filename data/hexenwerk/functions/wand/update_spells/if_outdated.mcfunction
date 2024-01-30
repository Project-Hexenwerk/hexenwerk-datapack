scoreboard players add %outdated hexenwerk.temp 1
#execute if score %outdated hexenwerk.temp matches 1 run tellraw @s ["",{"text":"[","color":"yellow","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/hexenwerk"},"hoverEvent":{"action":"show_text","contents":"Click to view Hexenwerk on Modrinth!"}},{"text":"Hexenwerk","color":"light_purple","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/hexenwerk"},"hoverEvent":{"action":"show_text","contents":"Click to view Hexenwerk on Modrinth!"}},{"text":"]","color":"yellow","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/hexenwerk"},"hoverEvent":{"action":"show_text","contents":"Click to view Hexenwerk on Modrinth!"}},{"text":" One or multiple spells on your wand seem to be outdated. Please remove them and hold them in your mainhand to update them to the newest version. \n Affected Spell(s):","color": "red"}] 
#$tellraw @s {"text": " - $(name)","color": "red"}
summon item_display ~ ~ ~ {Tags:["hexenwerk.temp_item"]}
item replace entity @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand
$data modify entity @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1] item.tag.hexenwerk-spell_data[$(array_pos)].outdated set value 1b
$data modify entity @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1] item.tag.hexenwerk-spell_data[$(array_pos)].hud_display.custom_icon.char set value "p"
$data modify entity @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1] item.tag.hexenwerk-spell_data[$(array_pos)].hud_display.name set value "OUTDATED"
$data modify entity @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1] item.tag.hexenwerk-spell_data[$(array_pos)].update_command set from storage hexenwerk:spells spells[{id:"$(id)"}].command
item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1] container.0
kill @e[type=item_display,tag=hexenwerk.temp_item,sort=nearest,limit=1]
