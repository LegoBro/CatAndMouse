## Fox pounce
scoreboard players set @s[scores={pouncing=..39}] pouncing 40
effect clear @s jump_boost
execute if predicate tick:on_ground run function cat:pounce/land

