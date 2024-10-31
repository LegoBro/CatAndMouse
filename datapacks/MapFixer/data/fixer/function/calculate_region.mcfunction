## Calculates the full size of the map by setting start and end points

scoreboard players operation #fixer.min.x fvar = #fixer.pos1.x fvar
scoreboard players operation #fixer.min.y fvar = #fixer.pos1.y fvar
scoreboard players operation #fixer.min.z fvar = #fixer.pos1.z fvar



scoreboard players operation #fixer.min.x fvar < #fixer.pos2.x fvar
scoreboard players operation #fixer.min.y fvar < #fixer.pos2.y fvar
scoreboard players operation #fixer.min.z fvar < #fixer.pos2.z fvar


execute store result storage fixer minX int 1 run scoreboard players get #fixer.min.x fvar
execute store result storage fixer minY int 1 run scoreboard players get #fixer.min.y fvar
execute store result storage fixer minZ int 1 run scoreboard players get #fixer.min.z fvar

tellraw @s [{"color":"yellow","text":"Min Position: "},{"interpret":false,"nbt":"min","storage":"fixer","color":"gold"}]

scoreboard players operation #fixer.max.x fvar = #fixer.pos1.x fvar
scoreboard players operation #fixer.max.y fvar = #fixer.pos1.y fvar
scoreboard players operation #fixer.max.z fvar = #fixer.pos1.z fvar

scoreboard players operation #fixer.max.x fvar > #fixer.pos2.x fvar
scoreboard players operation #fixer.max.y fvar > #fixer.pos2.y fvar
scoreboard players operation #fixer.max.z fvar > #fixer.pos2.z fvar

execute store result storage fixer maxX int 1 run scoreboard players get #fixer.max.x fvar
execute store result storage fixer maxY int 1 run scoreboard players get #fixer.max.y fvar
execute store result storage fixer maxZ int 1 run scoreboard players get #fixer.max.z fvar


tellraw @s [{"color":"yellow","text":"Max Position: "},{"interpret":false,"nbt":"max","storage":"fixer","color":"gold"}]

## Size of selection
scoreboard players operation #fixer.length.x fvar = #fixer.max.x fvar
scoreboard players add #fixer.length.x fvar 1
scoreboard players operation #fixer.length.x fvar -= #fixer.min.x fvar

scoreboard players operation #fixer.length.y fvar = #fixer.max.y fvar
scoreboard players add #fixer.length.y fvar 1
scoreboard players operation #fixer.length.y fvar -= #fixer.min.y fvar

scoreboard players operation #fixer.length.z fvar = #fixer.max.z fvar
scoreboard players add #fixer.length.z fvar 1
scoreboard players operation #fixer.length.z fvar -= #fixer.min.z fvar

scoreboard players operation #fixer.size fvar = #fixer.length.x fvar
scoreboard players operation #fixer.size fvar *= #fixer.length.y fvar
scoreboard players operation #fixer.size fvar *= #fixer.length.z fvar

execute store result storage fixer size int 1 run scoreboard players get #fixer.size fvar

tellraw @s [{"color":"light_purple","text":"Selected region size: "},{"interpret":false,"nbt":"size","storage":"fixer","color":"dark_purple"}]