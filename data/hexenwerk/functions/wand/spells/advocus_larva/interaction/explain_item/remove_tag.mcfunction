$tag @e[type=item_display,sort=nearest,tag=hexenwerk.explaining_spirit,scores={hexenwerk.spirit_id=$(id)},limit=1] remove hexenwerk.dont_move
$kill @e[type=item_display,sort=nearest,tag=hexenwerk.explaining_spirit_item,scores={hexenwerk.spirit_id=$(id)},limit=1]
$kill @e[type=text_display,sort=nearest,tag=hexenwerk.explaining_spirit_text,scores={hexenwerk.spirit_id=$(id)},limit=1]
$tag @e[type=interaction,sort=nearest,tag=hexenwerk.explaining_spirit_interaction,scores={hexenwerk.spirit_id=$(id)},limit=1] remove hexenwerk.dont_move


$execute as @e[type=item_display,tag=hexenwerk.explaining_spirit,sort=nearest,scores={hexenwerk.spirit_id=$(id)},limit=1] run data remove entity @s billboard

tag @s remove hexenwerk.dont_move
tag @s add hexenwerk.removed_tag