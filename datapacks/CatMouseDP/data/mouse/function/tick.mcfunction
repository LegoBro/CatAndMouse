## Main Mouse Tick
#Mouse Abilities
#Basic Abilities
#Nibble Attack: Inflicts very low damage to the Cat.
#Scramble this ability throws the mouse in a random direction
#Tail spring get a jump boost
#Hide: Grants temporary invisibility when stationary
#Catnip Dropper drops catnip and signals your location but gives 1 cheese .

#Trap Setting:
#Sticky Trap: Slows down the Cat for a short period.
#Noise Maker: Creates sounds to distract the Cat.
#Speed Increase:
#Level 1: Boosts speed by 10%.
#Level 2: Boosts speed by 15%.
#Group Heal:
#Level 1: Heals nearby Mice by 2 health points.
#Level 2: Heals nearby Mice by 4 health points.


function mouse:inventory

execute if score @s rightClick matches 1.. run function mouse:right_click



# Energy
execute if score #second var matches 0 run scoreboard players add @s[scores={energy=..24}] energy 1
execute if score #second var matches 0 run function tick:player/xp

## Abilities
# Invis
execute if entity @s[tag=invis] run function mouse:invis

# Eat Cheese
execute if score @s eatCheese matches 1.. run function mouse:eat_cheese

# Pickup Catnip
execute store result score #catnip_pickup var run clear @s cod 1
execute if score #catnip_pickup var matches 1.. run function mouse:pickup_catnip


## Cat Fights
execute if entity @e[type=item_display,tag=mouse_trap,distance=..1.5] run function cat:mouse_trap/trigger