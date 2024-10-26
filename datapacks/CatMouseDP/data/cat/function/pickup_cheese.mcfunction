## Place a Cat Cheese
# Spawned at world spawn - should always be loaded
summon item ~ ~ ~ {Tags:["cheese"],Invulnerable:1b,Age:-32768,Item:{id:"minecraft:cookie",count:1}}
execute as @n[type=item,tag=cheese,distance=..5] run spreadplayers 1000 0 25 250 under 90 false @s