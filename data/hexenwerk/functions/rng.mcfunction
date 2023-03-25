scoreboard players add RNGseed hexenwerk.rng_variable 1
execute store result score RNG hexenwerk.rng_variable run time query gametime
scoreboard players operation RNG hexenwerk.rng_variable *= RNGseed hexenwerk.rng_variable
scoreboard players operation RNG hexenwerk.rng_variable *= C_314159 hexenwerk.rng_constant
scoreboard players operation RNG hexenwerk.rng_variable *= C_2718281 hexenwerk.rng_constant
scoreboard players operation RNG hexenwerk.rng_variable *= RNG hexenwerk.rng_variable
scoreboard players operation RNG hexenwerk.rng_variable /= C_1000 hexenwerk.rng_constant
scoreboard players operation RNG hexenwerk.rng_variable *= C_314159 hexenwerk.rng_constant
scoreboard players operation RNG hexenwerk.rng_variable *= C_2718281 hexenwerk.rng_constant
