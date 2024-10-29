## Catnip
scoreboard players remove @s energy 25
#give @s cookie[food={nutrition:1,saturation:1,can_always_eat:true}]
tp @n[type=item,tag=cheese,sort=random] @s
effect give @s glowing 5 0 true
summon item ~ ~ ~ {Tags:["catnip"],Invulnerable:1b,Age:-32768,PickupDelay:100,Item:{id:"minecraft:cod",count:1,components:{"minecraft:food":{nutrition:1,saturation:1,can_always_eat:true}}}}