## Main Tick
execute as @a at @s run function tick:player
execute as @e[type=!player] at @s run function tick:entity

## Game Tick
# 0 = Lobby
# 1 = Pre-Game
# 2 = Game
# 3 = Post-Game

execute if score #game_state var matches 2 run function game:tick