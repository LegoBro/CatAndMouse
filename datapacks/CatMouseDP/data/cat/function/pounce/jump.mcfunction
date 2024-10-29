## Cat pounce
scoreboard players set @s[scores={pouncing=..46}] pouncing 50
effect clear @s jump_boost
execute if predicate tick:on_ground run function cat:pounce/land

