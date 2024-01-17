# function hexenwerk:wand/convert_display/string_to_array
data merge storage hexenwerk:temp {convert_display:{spaced_string:""}}
data modify storage hexenwerk:temp convert_display.font set from storage hexenwerk:temp convert_display.input.custom_icon.font
data modify storage hexenwerk:temp convert_display.char set from storage hexenwerk:temp convert_display.input.custom_icon.char
data modify storage hexenwerk:temp convert_display.color set from storage hexenwerk:temp convert_display.input.book_hex
data modify storage hexenwerk:temp convert_display.input set from storage hexenwerk:temp convert_display.input.name

function hexenwerk:wand/convert_display/add_negative_spacing 
function hexenwerk:wand/convert_display/seperate_chars

execute if data storage hexenwerk:temp {convert_display:{char:""}} run function hexenwerk:wand/convert_display/title with storage hexenwerk:temp convert_display
execute unless data storage hexenwerk:temp {convert_display:{char:""}} run function hexenwerk:wand/convert_display/title_icon with storage hexenwerk:temp convert_display