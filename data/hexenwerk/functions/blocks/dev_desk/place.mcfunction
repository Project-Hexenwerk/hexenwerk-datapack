tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"selector":"@s","color":"light_purple"},{"text":" -> placing developers desk","color":"red"},{"text":"\n"},{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> summoning glow item frame","color":"red"}]
summon glow_item_frame ~ ~ ~ {NoGravity: 1b, Silent: 1b, Facing: 1b, Invulnerable: 1b, Invisible: 1b, Fixed: 1b, Tags: ["hexenwerk.block", "hexenwerk.dev_desk"], Item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {CustomModelData: 1727}}}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting barrel","color":"red"}]
setblock ~ ~ ~ barrel{CustomName: '{"translate": "gui.hexenwerk.dev_desk"}'}

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> setting gui items from storage","color":"red"}]
data modify block ~ ~ ~ Items set from storage hexenwerk_guis dev_desk

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> killing self","color":"red"}]
execute if entity @s[type=glow_item_frame] run kill @s