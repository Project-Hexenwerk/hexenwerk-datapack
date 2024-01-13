function hexenwerk:wand/spells/raycast/spells_impact/utility/find_ground
execute at @e[type=marker,tag=hexenwerk.here] align xz positioned ~0.5 ~ ~0.5 summon marker run function hexenwerk:wand/spells/terrae_motus/init
kill @e[type=marker,tag=hexenwerk.here]

give @s ice{display:{Name:'{"translate":"item.hexenwerk.wand","color":"#62DEDE","italic":false}',Lore:['{"text":"• ","color":"gray","italic":false}','{"translate":"text.hexenwerk.spell_none","color":"gray","italic":false}','{"text":""}','{"text":"• ","color":"gray","italic":false}','{"translate":"text.hexenwerk.spell_none","color":"gray","italic":false}','{"text":"• ","color":"gray","italic":false}','{"translate":"text.hexenwerk.spell_none","color":"gray","italic":false}']}}