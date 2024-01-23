kill @e[type=marker,tag=hexenwerk.spell_ray_marker,limit=1,sort=nearest]
$execute unless data storage hexenwerk:temp {wand_data:{events:{on_entity_collision:{as_player:""}}}} run $(as_player)
