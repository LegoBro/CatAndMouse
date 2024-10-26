## Mouse Right Click
## Get Mouse Hotbar
scoreboard players set @s rightClick 0
execute store result score #hotbar var run data get entity @s SelectedItemSlot
execute if score #hotbar var matches 3 if predicate tick:on_ground run summon wind_charge ~ ~ ~ {Motion:[0.0,-5.0,0.0]}