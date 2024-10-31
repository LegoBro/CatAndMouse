forceload remove ~ ~
forceload add ~1 ~
execute store result score #dev.x fvar run data get entity @s Pos[0]
$execute if score #dev.x fvar < #fixer.max.x fvar run tp @s ~1 $(minY) ~
execute if score #dev.x fvar >= #fixer.max.x fvar run function fixer:move_z with storage fixer