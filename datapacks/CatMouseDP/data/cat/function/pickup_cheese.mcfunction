## Place a Cat Cheese
# Spawned at world spawn - should always be loaded
summon item ~ ~ ~ {Tags:["cheese"],Invulnerable:1b,Age:-32768,PickupDelay:100,Item:{id:"minecraft:cookie",count:1,components:{"minecraft:food":{nutrition:1,saturation:1,can_always_eat:true}}}}
execute as @n[type=item,tag=cheese,distance=..5] run spreadplayers 1000 0 25 250 under 90 false @s