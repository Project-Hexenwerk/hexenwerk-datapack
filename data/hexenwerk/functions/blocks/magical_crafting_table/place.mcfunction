tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> placing magical crafting table","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> summoning glow item frame","color":"red"}]
summon glow_item_frame ~ ~ ~ {NoGravity: 1b, Silent: 1b, Facing: 1b, Invulnerable: 1b, Invisible: 1b, Fixed: 1b, Tags: ["hexenwerk.block", "hexenwerk.magical_crafting_table"], Item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1727}}}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting barrel","color":"red"}]
setblock ~ ~ ~ barrel{CustomName: '{"translate": "gui.hexenwerk.magical_crafting_table"}'}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting gui items from storage","color":"red"}]
data modify block ~ ~ ~ Items set from storage hexenwerk_guis wand_crafting

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> adding \"hexenwerk.magical_crafting_table.wand\" tag","color":"red"}]
tag @e[type=minecraft:glow_item_frame,tag=hexenwerk.magical_crafting_table,sort=nearest,limit=1] add hexenwerk.magical_crafting_table.wand

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
execute if entity @s[type=glow_item_frame] run kill @s