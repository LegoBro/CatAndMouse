## Main Tick
execute as @a at @s run function tick:player
execute as @e[type=!player] at @s run function tick:entity
execute if score #game_state var matches 1.. run function game:tick