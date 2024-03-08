tag @s add hexenwerk.caster
$execute as @e[type=interaction,sort=nearest,scores={hexenwerk.spirit_id=$(id)},limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=hexenwerk.caster]
$tag @e[type=item_display,sort=nearest,tag=hexenwerk.explaining_spirit,scores={hexenwerk.spirit_id=$(id)},limit=1] add hexenwerk.dont_move
$tag @e[type=interaction,sort=nearest,tag=hexenwerk.explaining_spirit_interaction,scores={hexenwerk.spirit_id=$(id)},limit=1] add hexenwerk.dont_move

$execute as @e[type=interaction,sort=nearest,scores={hexenwerk.spirit_id=$(id)},limit=1] at @s run summon item_display ^-1 ^0.35 ^ {Tags:["hexenwerk.explaining_spirit_item","hexenwerk.init"],billboard:"vertical"} 
$execute as @e[type=interaction,sort=nearest,scores={hexenwerk.spirit_id=$(id)},limit=1] at @s run summon text_display ^ ^01 ^0.25 {Tags:["hexenwerk.explaining_spirit_text","hexenwerk.init"],alignment:"left",text:'[{"text":"Name: ","color":"light_purple"},{"text":"Magical Wand","color":"white"},{"text":"\\nItem Type: ","color":"light_purple"},{"text":"Casting Item","color":"white"},{"text":"\\nCrafting Materials: "},{"text":"2x Stick, 1x Magical Crystal","color":"white"},{"text":"\\nCrafting Recipe:","color":"light_purple"},{"text":"<insert image>","color":"white"},{"text":"\\nDescription: ","color":"light_purple"},{"text":"Used to cast all types of spells. 3 Spell Slots by default. Spells can be applied using a Magical Crafting Table.","color":"white"}]',billboard:"vertical"}

execute as @e[type=item_display,tag=hexenwerk.explaining_spirit_item,tag=hexenwerk.init] run function hexenwerk:wand/spells/advocus_larva/init
execute as @e[type=text_display,tag=hexenwerk.explaining_spirit_text,tag=hexenwerk.init] run function hexenwerk:wand/spells/advocus_larva/init
$execute as @e[type=item_display,tag=hexenwerk.explaining_spirit,sort=nearest,scores={hexenwerk.spirit_id=$(id)},limit=1] run data modify entity @s billboard set value "vertical"

$item replace entity @e[type=item_display,tag=hexenwerk.explaining_spirit_item,sort=nearest,scores={hexenwerk.spirit_id=$(id)},limit=1] container.0 from entity @s weapon.mainhand

tag @s add hexenwerk.dont_move
tag @s remove hexenwerk.caster

