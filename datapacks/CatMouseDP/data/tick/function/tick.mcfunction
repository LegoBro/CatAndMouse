## Main Tick

# Second Anchor - useful for running stuff once per second
execute store result score #second var run time query gametime
scoreboard players operation #second var %= #20 var


execute as @a at @s run function tick:player
execute as @e[type=!player] at @s run function tick:entity

## Game Tick
# 0 = Lobby
# 1 = Pre-Game
# 2 = Game
# 3 = Post-Game

execute if score #game_state var matches 2 run function game:tick