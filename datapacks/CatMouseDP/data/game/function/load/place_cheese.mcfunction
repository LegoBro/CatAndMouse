## Place a single cheese - recursive until spawner runs out
scoreboard players remove #cheese_spawner var 1

# Spawned at world spawn - should always be loaded
summon item ~ ~ ~ {Tags:["cheese"],Invulnerable:1b,Age:-32768,Item:{id:"minecraft:cookie",count:1,components:{"minecraft:food":{nutrition:1,saturation:1,can_always_eat:true}}}}
execute as @e[type=item,tag=cheese,distance=..5] run spreadplayers 1000 0 25 250 under 90 false @s

execute if score #cheese_spawner var matches 1.. run function game:load/place_cheese