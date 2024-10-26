## Game Tick

# Scoreboard
execute store result score cheese_left scoreboard if entity @e[type=item,tag=cheese]
execute store result score mice_left scoreboard if entity @a[tag=mouse]

scoreboard players remove #game_length var 1
scoreboard players operation #time_left var = #game_length var
scoreboard players operation #time_left var /= #20 var
scoreboard players operation time_left scoreboard = #time_left var

# Win Conditions
# Time Out
execute if score time_left scoreboard matches ..0 run function game:win/mice
# No Mice
#execute if score mice_left scoreboard matches ..0 run function game:win/cat
# All Cheese eaten
execute if score cheese_left scoreboard matches ..0 run function game:win/mice
