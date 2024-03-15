# for i in range(0,29):
#     file = open(f"C:/Users/Flynn/AppData/Roaming/.minecraft/saves/Hexenwerk Dev/datapacks/Hexenwerk Datapack/data/hexenwerk/functions/block/magical_crafting_table/return_item_to_player/{i}.mcfunction","w")
#     file.write("data remove storage hexenwerk:temp item
data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:" + str(i) + "b}]\nfunction hexenwerk:block/magical_crafting_table/return_item_to_player/spawn_item with storage hexenwerk:temp\nitem replace block ~ ~ ~ container." + str(i) + " with minecraft:air")
#     file.close

for i in range (0,27):
    print("item replace block ~ ~ ~ container." + str(i) + " with item barrier{hexnewerk:{gui_element:1b}}")