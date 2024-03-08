
$execute at @e[type=interaction,sort=nearest,scores={hexenwerk.spirit_id=$(id)}] run particle minecraft:dolphin ~ ~0.5 ~ 0.3 0.3 0.3 1 100

$kill @e[type=item_display,sort=nearest,scores={hexenwerk.spirit_id=$(id)}]
$kill @e[type=interaction,sort=nearest,scores={hexenwerk.spirit_id=$(id)}]
$kill @e[type=item_display,sort=nearest,tag=hexenwerk.explaining_spirit_item,scores={hexenwerk.spirit_id=$(id)},limit=1]
