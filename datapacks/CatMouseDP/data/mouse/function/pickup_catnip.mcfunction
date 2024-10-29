## Place a Mouse Catnip
# Spawned at world spawn - should always be loaded
summon item ~ ~ ~ {Tags:["catnip"],Invulnerable:1b,Age:-32768,PickupDelay:100,Item:{id:"minecraft:cod",count:1,components:{"minecraft:food":{nutrition:1,saturation:1,can_always_eat:true}}}}
execute as @n[type=item,tag=catnip,distance=..5] run spreadplayers 1000 0 25 250 under 90 false @s