function hexenwerk:rng
scoreboard players operation RNG hexenwerk.rng_variable %= C_1000 hexenwerk.rng_constant
execute if score RNG hexenwerk.rng_variable matches ..200 run summon minecraft:block_display ~ ~-0.5 ~ {block_state:{Name:"minecraft:honey_block"},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 0.010f, 0.000f,-0.005f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],Tags:["test"]}
execute if score RNG hexenwerk.rng_variable matches 201..400 run summon minecraft:block_display ~ ~-0.5 ~ {block_state:{Name:"minecraft:honeycomb_block"},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 0.010f, 0.000f,-0.005f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],Tags:["test"]}
execute if score RNG hexenwerk.rng_variable matches 401..600 run summon minecraft:block_display ~ ~-0.5 ~ {block_state:{Name:"minecraft:yellow_concrete"},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 0.010f, 0.000f,-0.005f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],Tags:["test"]}
execute if score RNG hexenwerk.rng_variable matches 601..800 run summon minecraft:block_display ~ ~-0.5 ~ {block_state:{Name:"minecraft:yellow_wool"},transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 0.010f, 0.000f,-0.005f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],Tags:["test"]}