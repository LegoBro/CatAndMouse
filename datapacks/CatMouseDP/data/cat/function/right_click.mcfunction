## Mouse Right Click
## Get Mouse Hotbar
scoreboard players set @s rightClick 0
execute store result score #hotbar var run data get entity @s SelectedItemSlot
execute if score #hotbar var matches 1 if predicate tick:on_ground run function cat:pounce
execute if score #hotbar var matches 2 run function cat:gas
execute if score #hotbar var matches 3 run function cat:mouse_trap
execute if score #hotbar var matches 4 run function cat:cheese_drop

## XP Resend
function tick:player/xp