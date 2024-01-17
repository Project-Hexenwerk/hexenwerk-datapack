execute if entity @s[type=item_display,tag=hexenwerk.magical_crafting_table,tag=!hexenwerk.ritual_base_block] if predicate hexenwerk:location/in_ritual run function hexenwerk:rituals/init
execute if entity @s[type=item_display,tag=hexenwerk.magical_crafting_table,tag=hexenwerk.ritual_base_block] unless predicate hexenwerk:location/in_ritual run function hexenwerk:rituals/remove

execute if entity @s[type=item_display,tag=hexenwerk.magical_flower] unless block ~ ~ ~ structure_void run function hexenwerk:blocks/magical_flower/destroy
execute if entity @s[type=item_display,tag=hexenwerk.magical_crafting_table] unless block ~ ~ ~ barrel run function hexenwerk:blocks/magical_crafting_table/destroy
execute if entity @s[type=item_display,tag=hexenwerk.dev_desk] unless block ~ ~ ~ barrel run function hexenwerk:blocks/dev_desk/destroy
execute if entity @s[type=item_display,tag=hexenwerk.comet] unless block ~ ~ ~ obsidian run function hexenwerk:blocks/comet/destroy
execute if entity @s[type=marker,tag=hexenwerk.spell_blocker] unless block ~ ~ ~ structure_void run function hexenwerk:blocks/spell_blocker/destroy

execute if block ~ ~ ~ minecraft:barrel[open=true] if entity @s[type=item_display,tag=hexenwerk.magical_crafting_table] run function hexenwerk:blocks/magical_crafting_table/main
execute if block ~ ~ ~ minecraft:barrel[open=true] if entity @s[type=item_display,tag=hexenwerk.dev_desk] run function hexenwerk:blocks/dev_desk/main
execute if entity @s[type=marker,tag=hexenwerk.spell_blocker] run function hexenwerk:blocks/spell_blocker/main
execute if entity @s[type=item_display,tag=hexenwerk.comet] run function hexenwerk:blocks/comet/main

