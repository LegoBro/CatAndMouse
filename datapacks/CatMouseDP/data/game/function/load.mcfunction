## Loads game - Starts a new round

scoreboard players set #game_state var 1

# Place Cheese
scoreboard players operation #cheese_spawner var = cheese_count setting
function game:load/place_cheese

# Player placements
tp @a 1000 100 0
execute as @r run function cat:load
execute as @a[tag=!cat] run function mouse:load

# Time Set up
scoreboard players operation #game_length var = game_length setting

forceload add 1109 -95 890 91

schedule function game:start 10s