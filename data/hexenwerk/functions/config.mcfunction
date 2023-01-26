# SETTINGS #

# Change to whatever you want the default maximum mana you want to be (values above 10000000 as well as below 100 are not supported and might break) [DEFAULT:100]
# PERFORMANCE IMPACT: Low
# DEFAULT: 100
scoreboard players set #default hexenwerk.mana_max 100

# Change to whatever you want the default mana regen percentange you want to be (everything above 50 will be interpreted as 100%)
# PERFORMANCE IMPACT: Low
# DEFAULT: 1
scoreboard players set #default hexenwerk.mana_regen 1

# Change to the amount of blocks you want raycasts (used for example for detecting where spells land/changing this setting will for example also change the max spell distance)
# PERFORMANCE IMPACT: Low - High
# DEFAULT: 50
scoreboard players set #max_raycast_distance hexenwerk.config_only 50