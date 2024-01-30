function hexenwerk:blocks/magical_crafting_table/wand/load_books/kick_items/main
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[0].id
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/first
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[1].id
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/second
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[2].id
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/third
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[3].id
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/fourth
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spell_data[4].id
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/fifth
