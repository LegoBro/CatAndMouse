#xp set @s 21 levels

#xp set @s 21 levels
#execute if score @s pouncing matches ..34 run xp add @s 2 points

scoreboard players add @s pouncing 1

execute if score @s pouncing matches 2 run effect give @s slowness 2 0 true
execute if score @s pouncing matches 2 run effect give @s jump_boost 2 2 true
execute if score @s pouncing matches 2 run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1

execute if score @s pouncing matches 12 run effect give @s slowness 2 1 true
execute if score @s pouncing matches 12 run effect give @s jump_boost 2 4 true
execute if score @s pouncing matches 12 run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1

execute if score @s pouncing matches 22 run effect give @s slowness 2 2 true
execute if score @s pouncing matches 22 run effect give @s jump_boost 2 6 true
execute if score @s pouncing matches 22 run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1

execute if score @s jump matches 1.. run function cat:pounce/jump
execute if score @s pouncing matches 47 run function cat:pounce/fail