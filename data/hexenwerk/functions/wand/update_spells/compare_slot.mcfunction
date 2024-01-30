$scoreboard players set %wand_spell_version hexenwerk.temp $(version)
$execute store result score %spell_version hexenwerk.temp run data get storage hexenwerk:spells spells[{id:"$(id)"}].version
execute if score %wand_spell_version hexenwerk.temp < %spell_version hexenwerk.temp run data modify storage hexenwerk:temp array set from entity @s SelectedItem.tag.hexenwerk-spell_data
execute if score %wand_spell_version hexenwerk.temp < %spell_version hexenwerk.temp run data modify storage hexenwerk:temp look_for_spell set value "$(id)"
execute if score %wand_spell_version hexenwerk.temp < %spell_version hexenwerk.temp run function hexenwerk:wand/update_spells/cycle_array with storage hexenwerk:temp wand_data
#function hexenwerk:wand/update_spells/if_outdated with entity @s SelectedItem.tag.hexenwerk-spell_data[{id:$(id)}]sa
 
scoreboard players reset %array_pos hexenwerk.temp
