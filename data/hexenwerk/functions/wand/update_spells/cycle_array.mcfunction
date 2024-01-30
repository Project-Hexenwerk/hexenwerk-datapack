scoreboard players add %array_pos hexenwerk.temp 1
execute if data storage hexenwerk:temp array[4] run scoreboard players set %array_pos hexenwerk.temp 0
$data modify storage hexenwerk:temp id set value $(id)
data modify storage hexenwerk:temp first_array_item set from storage hexenwerk:temp array[0]
$execute if data storage hexenwerk:temp {first_array_item:{id:"$(id)"}} store result storage hexenwerk:temp array_pos int 1 run scoreboard players get %array_pos hexenwerk.temp
$execute if data storage hexenwerk:temp {first_array_item:{id:"$(id)"}} run function hexenwerk:wand/update_spells/if_outdated with storage hexenwerk:temp
data remove storage hexenwerk:temp array[0]
execute if data storage hexenwerk:temp array[0] run function hexenwerk:wand/update_spells/cycle_array with storage hexenwerk:temp wand_data
