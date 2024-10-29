## Fox pounce land, cool
playsound block.stone.fall master @a
scoreboard players reset @s jump
scoreboard players reset @s pouncing
tag @s remove pouncing
#xp set @s 0
#xp set @s 0 levels
effect give @a[distance=..2.5,tag=!cat] instant_damage 1 0 true
particle crit ~ ~0.5 ~ 1 0 1 0.1 100