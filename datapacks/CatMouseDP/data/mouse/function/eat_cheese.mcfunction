## Mouse Eats cheese
scoreboard players set @s eatCheese 0
effect give @s regeneration 10 0 true
scoreboard players add @s energy 5
execute if score @s energy matches 25.. run scoreboard players set @s energy 25

function tick:player/xp

scoreboard players add @s points 3