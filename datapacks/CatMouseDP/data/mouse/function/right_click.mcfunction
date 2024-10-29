## Mouse Right Click
## Get Mouse Hotbar
scoreboard players set @s rightClick 0
execute store result score #hotbar var run data get entity @s SelectedItemSlot
execute if score #hotbar var matches 1 run function mouse:scramble
execute if score #hotbar var matches 2 if predicate tick:on_ground run function mouse:tail
execute if score #hotbar var matches 3 run function mouse:hide
execute if score #hotbar var matches 4 run function mouse:catnip

## XP Resend
function tick:player/xp