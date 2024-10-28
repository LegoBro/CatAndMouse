scoreboard players add @s[scores={energy=..24}] energy 1
execute if score #second var matches 0.. run scoreboard players operation #xp var = @s energy
execute if score #second var matches 0.. run function math:xp