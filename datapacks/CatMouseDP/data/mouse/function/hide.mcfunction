# Mouse Invis Hide
scoreboard players remove @s energy 15
tag @s add invis
effect give @s invisibility 5

execute store result score @s posX run data get entity @s Pos[0]
execute store result score @s posZ run data get entity @s Pos[2]