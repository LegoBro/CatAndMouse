## Cat Eats Catnip
scoreboard players set @s eatCatnip 0
effect give @s regeneration 20 0 true
effect give @s strength 20 0 true
scoreboard players add @s energy 10
execute if score @s energy matches 50.. run scoreboard players set @s energy 50

function tick:player/xp