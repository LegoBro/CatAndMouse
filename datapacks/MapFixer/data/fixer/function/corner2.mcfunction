execute at @s align xyz run tp @s ~.5 ~.5 ~.5
execute store result score #fixer.pos2.x fvar run data get entity @s Pos[0]
execute store result score #fixer.pos2.y fvar run data get entity @s Pos[1]
execute store result score #fixer.pos2.z fvar run data get entity @s Pos[2]
data modify storage fixer pos2 set value [0,0,0]

execute store result storage fixer pos2[0] int 1 run scoreboard players get #fixer.pos2.x fvar
execute store result storage fixer pos2[1] int 1 run scoreboard players get #fixer.pos2.y fvar
execute store result storage fixer pos2[2] int 1 run scoreboard players get #fixer.pos2.z fvar

tellraw @s [{"color":"aqua","text":"Corner 2 set to: "},{"interpret":false,"nbt":"pos2","storage":"fixer","color":"dark_aqua"}]

function fixer:calculate_region