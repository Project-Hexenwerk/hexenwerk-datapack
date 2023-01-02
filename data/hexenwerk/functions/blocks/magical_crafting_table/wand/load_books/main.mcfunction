function hexenwerk:blocks/magical_crafting_table/wand/load_books/kick_items/main
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[0]
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/first
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[1]
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/second
execute store result score @s hexenwerk.temp run data get block ~ ~ ~ Items[{Slot: 12b}].tag.hexenwerk-spells[2]
execute unless score @s hexenwerk.temp matches 0 run function hexenwerk:blocks/magical_crafting_table/wand/load_books/third
