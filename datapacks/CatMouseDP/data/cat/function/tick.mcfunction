## Main Cat Tick


#Basic Abilities
#Swipe Attack: Deals significant damage to any nearby Mouse.
#Pounce: A quick leap to close distance between the Cat and Mice.
#Cat Gass the all players that are in unreachable areas will be Gassed out aka Poisoned the Mice out
#Mouse Trap when a mouse walks into a Mouse trap it will notify the cat of their location and hold the mouse still for a few seconds 
#Cheese Dropper drop Cheese on the ground to prolong the time for the Mice for getting all the Cheese Drops at a random location on the map
#Upgrades
#Speed Boost:
#Level 1: Increases speed by 10% for 5 seconds.
#Level 2: Increases speed by 20% for 7 seconds.
#Enhanced Senses:
#Level 1: Detects Mice within a 5-block radius.
#Level 2: Detects Mice within a 10-block radius.
#Armor Upgrade:
#Level 1: Reduces damage from traps by 10%.
#Level 2: Reduces damage from traps by 20%.

function cat:inventory

execute if score @s rightClick matches 1.. run function cat:right_click


# Energy
execute if score #second var matches 0 run scoreboard players add @s[scores={energy=..24}] energy 1
execute if score #second var matches 0 run function tick:player/xp

## Abilities
# Pounce
execute if entity @s[tag=pouncing] run function cat:pounce/waiting

# Eat Catnip
execute if score @s eatCatnip matches 1.. run function cat:eat_catnip

# Pickup Cheese
execute store result score #cheese_pickup var run clear @s cookie 1
execute if score #cheese_pickup var matches 1.. run function cat:pickup_cheese