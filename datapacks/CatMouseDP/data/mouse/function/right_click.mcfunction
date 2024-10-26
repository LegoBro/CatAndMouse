## Mouse Right Click
## Get Mouse Hotbar
scoreboard players set @s rightClick 0
execute store result score #hotbar var run data get entity @s SelectedItemSlot
execute if score #hotbar var matches 2 run function mouse:scramble
execute if score #hotbar var matches 3 if predicate tick:on_ground run function mouse:tail