## Double Check Invis Coordinate
execute store result score #posX var run data get entity @s Pos[0]
execute store result score #posZ var run data get entity @s Pos[2]

execute unless score #posX var = @s posX run function mouse:invis/fail
execute unless score #posZ var = @s[tag=invis] posZ run function mouse:invis/fail