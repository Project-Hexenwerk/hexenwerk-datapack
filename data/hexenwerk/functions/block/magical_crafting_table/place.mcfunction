setblock ~ ~ ~ barrel
execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},Tags:["hexenwerk.block","hexenwerk.block.type.magical_crafting_table","hexenwerk.block.gui"],item:{id:"minecraft:glow_item_frame",count:1,components:{"minecraft:custom_model_data":5842002}}}
function hexenwerk:block/magical_crafting_table/fill_gui
function hexenwerk:block/magical_crafting_table/return_item_to_player/input_slots/start