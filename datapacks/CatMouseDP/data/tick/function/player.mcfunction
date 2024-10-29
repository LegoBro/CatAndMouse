## Main Player Tick
effect give @s saturation infinite 0 true
execute if entity @s[tag=mouse] run function mouse:tick
execute if entity @s[tag=cat] run function cat:tick