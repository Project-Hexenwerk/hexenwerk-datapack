data modify storage hexenwerk:temp convert_display.first_letter set string storage hexenwerk:temp convert_display.input 0 1
data modify storage hexenwerk:temp convert_display.input set string storage hexenwerk:temp convert_display.input 1
function hexenwerk:wand/convert_display/add_negative_spacing_macro with storage hexenwerk:temp convert_display
execute unless data storage hexenwerk:temp {convert_display:{input:""}} run function hexenwerk:wand/convert_display/add_negative_spacing