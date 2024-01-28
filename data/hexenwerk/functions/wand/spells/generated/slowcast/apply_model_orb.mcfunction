data merge entity @s {item:{id:"leather_horse_armor",Count:1b,tag:{CustomModelData:1800}},teleport_duration:1,brightness:{block:15,sky:15}}
execute if data storage hexenwerk:temp wand_data.orb_data{has_custom_model:1b} run data modify entity @s item.id set from storage hexenwerk:temp wand_data.orb_data.custom_model.item_id
execute if data storage hexenwerk:temp wand_data.orb_data{has_custom_model:1b} run data modify entity @s item.tag.CustomModelData set from storage hexenwerk:temp wand_data.orb_data.custom_model.CustomModelData
data modify entity @s item.tag.display.color set from storage hexenwerk:temp wand_data.orb_data.color
data modify entity @s transformation.scale set from storage hexenwerk:temp wand_data.orb_data.scale
data modify entity @s transformation.translation set from storage hexenwerk:temp wand_data.orb_data.translation
