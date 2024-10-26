## End Game
scoreboard players set #game_state var 3

## Keep players from dying post-game
effect give @a resistance 25 9

schedule function game:post/end 10s