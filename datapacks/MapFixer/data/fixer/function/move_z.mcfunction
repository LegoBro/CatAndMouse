forceload remove ~1 ~
$forceload add $(minX) ~1
execute store result score #dev.z fvar run data get entity @s Pos[2]
$execute if score #dev.z fvar < #fixer.max.z fvar run tp @s $(minX) $(minY) ~1
execute if score #dev.z fvar >= #fixer.max.z fvar run function fixer:finish
