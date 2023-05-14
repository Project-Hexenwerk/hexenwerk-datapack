item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.11
data modify storage hexenwerk:temp lore set from block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore
data remove block ~ ~ ~ Items[{Slot:15b}].tag.display.Lore
item modify block ~ ~ ~ container.15 hexenwerk:attunements/wand/maximum
item modify block ~ ~ ~ container.15 hexenwerk:attunements/wand/slots/first
item modify block ~ ~ ~ container.15 hexenwerk:attunements/wand/slots/second
item modify block ~ ~ ~ container.15 hexenwerk:attunements/wand/slots/third
tag @s add hexenwerk.modified_crafing_output
