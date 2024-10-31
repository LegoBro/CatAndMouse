execute at @s align xyz run tp @s ~.5 ~.5 ~.5
execute store result score #fixer.pos1.x fvar run data get entity @s Pos[0]
execute store result score #fixer.pos1.y fvar run data get entity @s Pos[1]
execute store result score #fixer.pos1.z fvar run data get entity @s Pos[2]
data modify storage fixer pos1 set value [0,0,0]

execute store result storage fixer pos1[0] int 1 run scoreboard players get #fixer.pos1.x fvar
execute store result storage fixer pos1[1] int 1 run scoreboard players get #fixer.pos1.y fvar
execute store result storage fixer pos1[2] int 1 run scoreboard players get #fixer.pos1.z fvar

tellraw @s [{"color":"aqua","text":"Corner 1 set to: "},{"interpret":false,"nbt":"pos1","storage":"fixer","color":"dark_aqua"}]

tellraw @s [{"color":"yellow","text":"Set Corner 2", "underlined": true, "clickEvent":{"action": "run_command","value": "/function fixer:corner2"}}]

function fixer:calculate_region
