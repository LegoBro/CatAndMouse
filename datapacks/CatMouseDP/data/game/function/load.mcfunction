## Loads game - Starts a new round

scoreboard players set #game_state var 1

# Place Cheese
scoreboard players operation #cheese_spawner var = cheese_count setting
function game:load/place_cheese

# Player placements
tp @a 1000 100 0
execute as @r run function cat:load
execute as @a[tag=!cat] run function mouse:load

tp @p[tag=cat] 984 53 9
tp @a[tag=mouse] 1093 42 -38

# Time Set up
scoreboard players operation #game_length var = game_length setting