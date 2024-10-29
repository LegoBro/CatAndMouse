## Cat Eats cheese
scoreboard players set @s eatCatnip 0
effect give @s regeneration 20 0 true
scoreboard players add @s energy 10
execute if score @s energy matches 25.. run scoreboard players set @s energy 25

function tick:player/xp