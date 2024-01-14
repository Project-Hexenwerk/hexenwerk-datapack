function hexenwerk:wand/spells/raycast/spells_impact/utility/find_ground
execute at @e[type=marker,tag=hexenwerk.here] positioned ~ ~-0.9 ~ summon marker run function hexenwerk:wand/spells/ignis_temptates/init
kill @e[type=marker,tag=hexenwerk.here]
